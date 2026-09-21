# Detection Opportunities

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Cyber Threat Intelligence (CTI)

**Status:** Active Investigation

**Version:** 2.0

---

# Objective

This document identifies potential detection opportunities derived from the investigation.

Rather than relying solely on domain-based indicators, the focus is on detecting behavioral patterns, infrastructure characteristics, and operational workflows that could indicate similar recruitment campaigns in the future.

The recommendations are intended for Security Operations Center (SOC) analysts, threat hunters, and detection engineers.

---

# Scope

Detection opportunities are derived from:

- Recruiter interactions
- DNS analysis
- Infrastructure analysis
- Reputation analysis
- Social engineering observations
- Technology stack analysis
- MITRE ATT&CK mapping

---

# Detection Strategy

Detection opportunities are grouped into:

- Network Detection
- DNS Detection
- Proxy/Web Gateway Detection
- SIEM Correlation
- Endpoint Detection
- Threat Hunting
- User Awareness

---

# Detection Opportunity 1 — Newly Registered Domains

## Observation

Two operational domains (`linkroles.my` and `unitelmatch.top`) were registered only days before being used during the onboarding process.

## Detection Logic

Alert when users interact with domains registered within a defined time window (for example, the previous 30–90 days), particularly when those domains are associated with employment or financial workflows.

## MITRE ATT&CK

- T1583.001 – Acquire Infrastructure: Domains

## Data Sources

- Passive DNS
- WHOIS
- DNS Logs
- Proxy Logs

## Detection Priority

**High**

---

# Detection Opportunity 2 — Multiple Related Domains

## Observation

The onboarding process transitioned across multiple domains while maintaining a consistent workflow.

Observed sequence:

```
occupationoasis.com
        ↓
linkroles.my
        ↓
unitelmatch.top
```

## Detection Logic

Identify users accessing multiple newly observed domains that share similar themes, branding, or operational workflows within a short time period.

## MITRE ATT&CK

- T1583.001
- T1204

## Detection Priority

**High**

---

# Detection Opportunity 3 — Domain Migration

## Observation

The recruiter instructed the analyst to move to another domain immediately after a browser warning.

## Detection Logic

Alert on rapid user transitions from one external domain to another after access failures or security warnings.

## Data Sources

- Browser telemetry
- Proxy logs
- DNS logs
- Web gateway logs

## Detection Priority

**High**

---

# Detection Opportunity 4 — Browser Security Warnings

## Observation

Google displayed a warning for `linkroles.my`.

## Detection Logic

Monitor enterprise browser telemetry for Safe Browsing or SmartScreen warnings and correlate them with user browsing activity.

## Data Sources

- Chrome Enterprise
- Microsoft Defender
- Browser security events
- Web proxy

## Detection Priority

**High**

---

# Detection Opportunity 5 — Cryptocurrency Platforms During Recruitment

## Observation

During onboarding, cryptocurrency-related activity and the OKX Wallet platform were observed.

## Detection Logic

Flag workflows in which users transition directly from recruitment platforms to cryptocurrency exchanges or wallet services.

## Data Sources

- Proxy logs
- DNS logs
- CASB
- Browser telemetry

## Detection Priority

**Medium**

---

# Detection Opportunity 6 — Multiple Cloud Providers

## Observation

The infrastructure used both Amazon Web Services and Cloudflare.

## Detection Logic

Cloud infrastructure alone is **not** suspicious.

Instead, correlate cloud-hosted infrastructure with:

- Newly registered domains
- Recruitment themes
- Browser warnings
- Rapid domain transitions

## Detection Priority

**Low**

---

# Detection Opportunity 7 — Recruiter-Led Sequential Navigation

## Observation

The recruiter instructed the analyst step-by-step throughout the onboarding process.

## Detection Logic

Monitor for repeated navigation patterns involving:

- Account creation
- Profile completion
- Financial onboarding
- Repeated redirection

This detection is more suitable for user awareness or browser telemetry than traditional network signatures.

## Detection Priority

**Medium**

### Application Fingerprinting

Organizations monitoring outbound web traffic may identify similar platforms by searching for HTTP requests containing:

- merchant-id: 42
- /tiny-shop/v1/
- GET /site/config
- GET /member/member/index
- GET /shop/product/my-product
- GET /index/index

Combined with domains hosted behind Cloudflare and recently registered onboarding portals, these indicators may assist threat hunting activities.

---

# SIEM Correlation Opportunities

## Example Correlation Rule

Alert when all of the following occur within 24 hours:

- User accesses a newly registered domain.
- Browser records a security warning.
- User accesses a second domain.
- User accesses cryptocurrency-related websites.

Risk Score:

High

---

# Example Splunk SPL

```spl
index=proxy

| stats count by user,url

| lookup newly_registered_domains domain OUTPUT registration_date

| where registration_date > relative_time(now(), "-30d")

| table _time,user,url
```

Purpose:

Identify user activity involving recently registered domains.

---

# Example Microsoft Sentinel (KQL)

```kusto
DeviceNetworkEvents
| where RemoteUrl contains ".top"
   or RemoteUrl contains ".my"
| summarize Count=count() by DeviceName, RemoteUrl
```

Purpose:

Identify connections to domains matching observed campaign patterns.

---

# Example Sigma Rule

```yaml
title: Access to Newly Registered Recruitment Domains

id: cti-osint-001

status: experimental

logsource:
  category: proxy

detection:

  selection:

    url|contains:

      - occupationoasis

      - linkroles

      - unitelmatch

  condition: selection

level: medium

tags:

- attack.resource-development

- attack.initial-access
```

Purpose:

Demonstrate how campaign-specific domains could be monitored.

---

# Threat Hunting Opportunities

Potential hunt hypotheses include:

### Hunt 1

Users accessing multiple newly registered domains within one browsing session.

---

### Hunt 2

Users visiting recruitment websites followed by cryptocurrency exchanges.

---

### Hunt 3

Repeated browser security warnings followed by successful access to alternative domains.

---

### Hunt 4

Employees interacting with websites hosted behind Cloudflare shortly after domain registration.

Cloudflare itself should **not** be treated as malicious; this hunt should rely on correlation with other indicators.

---

### Hunt 5

Domains lacking MX records but requesting account registration.

---

# User Awareness Opportunities

Training material should encourage users to:

- Verify recruiter identities independently.
- Be cautious when redirected to alternative domains.
- Treat browser security warnings seriously.
- Independently verify remote job platforms before creating accounts.
- Report unexpected requests involving cryptocurrency or financial onboarding.

---

# Detection Limitations

The following were **not observed** during the investigation:

- Malware delivery
- Command-and-control traffic
- Exploit activity
- Payload downloads
- Credential theft
- File execution
- Persistence mechanisms

As a result, traditional endpoint detection signatures are unlikely to identify campaigns of this nature.

Behavioral analytics and user awareness provide greater detection value.

---

# ATT&CK Data Sources

| ATT&CK Data Source | Relevance |
|--------------------|-----------|
| DNS                   | High               |
| Network Traffic       | High               |
| Web Requests          | High               |
| Browser Telemetry     | High               |
| User Account Creation | Medium             |
| Cloud Service Logs    | Medium             |
| Email                 | Low (not observed) |
| File Monitoring       | Low (not observed) |
| Process Creation      | Not observed       |

---

# Detection Prioritization

| Detection Opportunity | Priority |
|-----------------------|----------|
| Newly Registered Domains            | High   |
| Domain Migration                    | High   |
| Browser Security Warnings           | High   |
| SIEM Correlation                    | High   |
| Threat Hunting                      | Medium |
| Cryptocurrency Workflow Correlation | Medium |
| Cloud Infrastructure Correlation    | Low    |
| Static IOC Matching                 | Low    |

---

# Analytical Assessment

The investigation demonstrates that this type of campaign is better detected through **behavioral correlation** than through static indicators.

While domains and IP addresses may change, the observed workflow exhibited several consistent characteristics:

- Use of recently registered domains.
- Structured recruiter-led onboarding.
- Migration between operational domains.
- Reliance on legitimate cloud infrastructure.
- Browser warning followed by immediate platform transition.
- Introduction of cryptocurrency during onboarding.

Organizations implementing behavioral analytics, DNS monitoring, browser telemetry, and user awareness programs would be better positioned to identify similar campaigns than those relying solely on blocklists.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-022-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-01.png), [EV-022-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-02.png), [EV-022-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-03.png), [EV-022-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-04.png), [EV-023-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-023-01.png), [EV-023-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-023-02.png), [EV-024-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-01.png), [EV-024-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-02.png), [EV-024-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-03.png), [EV-025-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-01.png), [EV-025-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-02.png), [EV-025-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-03.png), [EV-025-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-04.png), [EV-025-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-05.png), [EV-025-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-06.png), [EV-025-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-07.png) [EV-025-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-08.png) [EV-025-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-09.png) | Domain registration analysis    |
| [EV-032-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-01.png), [EV-032-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-02.png), [EV-032-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-03.png), [EV-032-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-04.png), [EV-032-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-05.png), [EV-032-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-06.png), [EV-032-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-07.png), [EV-032-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-08.png), [EV-032-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-09.png), [EV-032-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-10.png), [EV-032-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-11.png), [EV-032-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-12.png), [EV-032-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-13.png), [EV-032-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-14.png), [EV-032-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-15.png), [EV-032-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-16.png) [EV-032-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-17.png) [EV-032-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-18.png), [EV-032-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-19.png), [EV-043-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-01.png), [EV-043-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-02.png), [EV-043-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-03.png), [EV-043-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-04.png), [EV-043-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-05.png), [EV-043-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-06.png), [EV-043-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-07.png), [EV-043-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-08.png), [EV-043-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-09.png), [EV-043-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-10.png), [EV-043-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-11.png), [EV-043-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-12.png), [EV-043-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-13.png), [EV-043-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-14.png), [EV-043-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-15.png), [EV-043-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-16.png), [EV-043-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-17.png), [EV-043-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-18.png), [EV-043-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-19.png), [EV-043-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-20.png), [EV-043-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-21.png), [EV-043-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-22.png), [EV-043-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-23.png), [EV-043-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-24.png), [EV-043-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-251.png), [EV-043-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-26.png), [EV-043-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-27.png), [EV-043-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-28.png), [EV-043-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-29.png), [EV-043-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-30.png), [EV-043-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-31.png), [EV-043-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-32.png), [EV-043-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-33.png), [EV-043-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-34.png), [EV-043-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-35.png), [EV-043-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-36.png), [EV-043-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-37.png), [EV-043-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-38.png), [EV-043-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-39.png), [EV-043-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-40.png), [EV-043-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-41.png) | DNS and infrastructure analysis |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) | Browser warning observations    |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png), [EV-002-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-02.png), [EV-002-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-03.png), [EV-002-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-04.png), [EV-002-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-05.png), [EV-002-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-06.png), [EV-002-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-07.png), [EV-002-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-08.png), [EV-002-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-09.png), [EV-002-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-10.png), [EV-002-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-11.png), [EV-002-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-12.png), [EV-002-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-13.png), [EV-002-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-14.png), [EV-002-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-15.png), [EV-002-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-16.png), [EV-002-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-17.png), [EV-002-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-18.png), [EV-002-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-19.png), [EV-002-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-20.png), [EV-002-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-21.png), [EV-002-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-22.png), [EV-002-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-23.png), [EV-002-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-24.png), [EV-002-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-25.png), [EV-002-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-26.png), [EV-002-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-27.png), [EV-002-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-28.png), [EV-002-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-29.png), [EV-002-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-30.png), [EV-002-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-31.png), [EV-002-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-32.png), [EV-002-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-33.png), [EV-002-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-34.png), [EV-002-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-35.png), [EV-002-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-36.png), [EV-002-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-37.png), [EV-002-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-38.png), [EV-002-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-39.png), [EV-002-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-40.png), [EV-002-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-41.png), [EV-002-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-42.png), [EV-002-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-43.png), [EV-002-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-44.png), [EV-002-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-45.png), [EV-002-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-46.png), [EV-002-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-47.png), [EV-002-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-48.png), [EV-002-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-49.png), [EV-002-50](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-50.png), [EV-002-51](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-51.png), [EV-002-52](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-52.png), [EV-002-53](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-53.png), [EV-002-54](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-54.png), [EV-002-55](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-55.png), [EV-002-56](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-56.png), [EV-002-57](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-57.png), [EV-002-58](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-58.png), [EV-002-59](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-59.png), [EV-002-60](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-60.png), [EV-002-61](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-61.png), [EV-002-62](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-62.png), [EV-002-63](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-63.png), [EV-002-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-64.png), [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png), [EV-002-66](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-66.png), [EV-002-67](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-67.png), [EV-002-68](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-68.png), [EV-002-69](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-69.png), [EV-002-70](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-70.png), [EV-002-71](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-71.png), [EV-002-72](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-72.png), [EV-002-73](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-73.png), [EV-002-74](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-74.png), [EV-002-75](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-75.png), [EV-002-76](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-76.png), [EV-002-77](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-77.png), [EV-002-78](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-78.png), [EV-002-79](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-79.png), [EV-002-80](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-80.png), [EV-002-81](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-81.png), [EV-002-82](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-82.png), [EV-002-83](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-83.png), [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png), [EV-002-85](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-85.png), [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png) | Recruiter communications        |
| [EV-044-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-01.png), [EV-044-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-02.png), [EV-044-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-03.png), [EV-044-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-04.png), [EV-044-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-05.png), [EV-044-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-06.png), [EV-044-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-07.png), [EV-044-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-08.png), [EV-044-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-09.png), [EV-044-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-10.png), [EV-044-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-11.png), [EV-044-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-12.png), [EV-044-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-13.png), [EV-044-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-14.png), [EV-044-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-15.png), [EV-044-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-16.png), [EV-044-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-17.png), [EV-044-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-18.png), [EV-044-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-19.png), [EV-044-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-20.png), [EV-044-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-21.png), [EV-044-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-22.png), [EV-044-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-23.png), [EV-044-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-24.png), [EV-044-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-25.png), [EV-044-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-26.png), [EV-044-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-27.png), [EV-044-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-28.png), [EV-044-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-29.png), [EV-044-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-30.png), [EV-044-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-31.png), [EV-044-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-32.png), [EV-044-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-33.png), [EV-044-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-34.png), [EV-044-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-35.png), [EV-044-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-36.png), [EV-044-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-37.png), [EV-044-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-38.png), [EV-044-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-39.png), [EV-044-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-40.png), [EV-044-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-41.png), [EV-044-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-42.png), [EV-044-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-43.png), [EV-044-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-44.png), [EV-044-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-45.png), [EV-044-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-46.png), [EV-044-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-47.png), [EV-044-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-48.png), [EV-044-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-49.png), [EV-044-50](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-50.png), [EV-044-51](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-51.png), [EV-044-52](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-52.png), [EV-044-53](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-53.png), [EV-044-54](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-54.png), [EV-044-55](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-55.png), [EV-044-56](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-56.png), [EV-044-57](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-57.png), [EV-044-58](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-58.png), [EV-044-59](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-59.png), [EV-044-60](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-60.png), [EV-044-61](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-61.png), [EV-044-62](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-62.png), [EV-044-63](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-63.png), [EV-044-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-044-64.png) | Social engineering workflow     |
| [EV-036-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-01.png), [EV-036-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-02.png), [EV-036-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-03.png) | Cryptocurrency observations     |

---

# Confidence Assessment

| Detection Category | Confidence |
|--------------------|------------|
| DNS-based detections      | High                   |
| Behavioral detections     | High                   |
| Browser telemetry         | High                   |
| Threat hunting hypotheses | Medium                 |
| Endpoint detections       | Low (limited evidence) |
| Malware detections        | Not Applicable         |

## Change log
| Version | Date | Change |
|---------|------|--------|
| 2.0 | 2026-09-21 | Added Application Fingerprinting section documenting HTTP request indicators (merchant-id, /tiny-shop/v1/ paths, and specific API endpoints) and Cloudflare-hosted domains for threat hunting. |

---

# Related Documents

- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     