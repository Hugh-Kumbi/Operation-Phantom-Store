# Lessons Learned

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Version:** 1.2

---

# Objective

This document captures the key lessons learned throughout the investigation of the multi-domain recruitment campaign. These lessons are intended to improve future OSINT, Cyber Threat Intelligence (CTI), and digital fraud investigations involving recruiter-led social engineering campaigns.

---

# Executive Summary

This investigation began as the analysis of a single suspicious recruitment website. As additional evidence was collected, it became apparent that the campaign employed an evolving infrastructure composed of multiple operational domains, shared backend services, and progressive social engineering techniques.

Rather than treating each new domain as an isolated incident, correlating technical and behavioural evidence revealed a coordinated campaign that continuously rotated infrastructure while maintaining the same operational backend.

---

# Investigation Lessons

## 1. Initial Impressions Can Be Misleading

The first domain, `occupationoasis.com`, appeared professionally designed and used reputable cloud services, including:

- Amazon Web Services
- Amazon CloudFront
- Amazon Route53
- Google Analytics
- Google Tag Manager
- TLS 1.3

These characteristics are commonly associated with legitimate websites.

**Lesson Learned**

Professional hosting, valid SSL certificates, and modern web technologies should not be interpreted as indicators of legitimacy. Infrastructure quality and trustworthiness are independent attributes.

---

## 2. Infrastructure Evolution is a Strong Indicator

The recruiter introduced new domains over time:

```
occupationoasis.com
        ↓
linkroles.my
        ↓
unitelmatch.top
        ↓
unitelmatch.cc
        ↓
unitelmatch.cyou
```

Each transition occurred after the previous domain became unavailable or encountered reputation issues.

**Lesson Learned**

Rapid domain replacement can indicate a deliberate strategy to maintain operational continuity while avoiding detection or reputation-based blocking.

---

## 3. Browser Security Warnings Provide Valuable Context

During the investigation:

- Google Safe Browsing warned that `unitelmatch.cc` was dangerous.
- Shortly afterwards, the recruiter supplied `unitelmatch.cyou` as a "backup" platform.

This behavioural sequence aligned with the technical evidence of infrastructure rotation.

**Lesson Learned**

End-user security warnings should be treated as investigative leads rather than ignored. Correlating them with adversary behaviour can provide valuable insights into campaign operations.

---

## 4. Shared Backend Infrastructure Revealed Campaign Relationships

Although multiple frontend domains were used, analysis identified a shared backend:

```
www.ioutrankap.cyou
```

Common observations included:

- Shared API structure
- Identical endpoint paths
- Identical request patterns
- Shared `merchant-id: 42`
- Consistent application behaviour

**Lesson Learned**

Backend infrastructure often remains more stable than frontend domains and can serve as a key pivot point for infrastructure correlation.

---

## 5. Technical Indicators Alone Are Insufficient

No single technical indicator conclusively demonstrated a coordinated campaign.

Instead, confidence increased through the combination of:

- DNS analysis
- WHOIS records
- Certificate Transparency logs
- Web technology fingerprinting
- Backend API analysis
- Recruiter communications
- Browser security warnings
- Behavioural observations

**Lesson Learned**

Reliable attribution of infrastructure relationships requires correlating multiple independent sources of evidence.

---

## 6. Behavioural Evidence is as Valuable as Technical Evidence

Screenshots of recruiter communications documented:

- Requests to migrate between domains
- Explanations that the platform was being "upgraded"
- Introduction of backup portals
- Timing of infrastructure changes

These communications provided context that purely technical analysis could not.

**Lesson Learned**

Human interactions can provide essential evidence for understanding how technical infrastructure is used in practice.

---

## 7. Short-Lived Infrastructure is Common

Across the campaign, domains exhibited:

- Recent registration dates
- Short-lived TLS certificates
- WHOIS privacy protection
- Cloudflare reverse proxying
- Minimal DNS records
- Frequent infrastructure changes

**Lesson Learned**

Short operational lifespans reduce the usefulness of relying solely on reputation-based detection. Behavioural and structural analysis becomes increasingly important.

---

## 8. Cloud Services Do Not Imply Legitimacy

Campaign infrastructure leveraged reputable providers, including:

- Amazon Web Services
- Amazon CloudFront
- Cloudflare
- Google Trust Services

These services enhanced availability, scalability, and encryption but did not indicate benign intent.

**Lesson Learned**

Threat actors frequently abuse trusted cloud platforms to improve resilience and evade simplistic detection methods.

---

## 9. Evidence Preservation is Critical

Throughout the investigation, the following artefacts were preserved:

- WHOIS records
- DNS records
- TLS certificates
- URLScan results
- VirusTotal reports
- Browser screenshots
- Recruiter conversations
- Network requests
- API observations

Some domains changed or became inaccessible during the investigation.

**Lesson Learned**

Capturing evidence promptly is essential, as malicious infrastructure can evolve or disappear within days.

---

## 10. Investigations Should Be Living Documents

The investigation expanded from three domains to five as new evidence emerged.

Each new finding required updates to:

- Timeline
- Infrastructure mapping
- Diamond Model
- Detection Opportunities
- Indicators of Compromise
- Findings
- Evidence Register

Version control and structured documentation allowed these updates to be incorporated without losing historical context.

**Lesson Learned**

Threat intelligence investigations should be treated as living documents that evolve alongside the observed campaign.

---

# Recommendations for Future Investigations

Future investigations of similar campaigns should:

- Monitor newly introduced domains for structural similarity.
- Track shared backend infrastructure and API endpoints.
- Record recruiter communications alongside technical findings.
- Preserve evidence immediately upon discovery.
- Use multiple OSINT sources to validate observations.
- Correlate technical indicators with behavioural evidence.
- Maintain version-controlled documentation to support ongoing updates.

---

# Key Takeaways

| Observation | Lesson |
|-------------|--------|
| Professional cloud hosting       | Does not imply legitimacy                   |
| Rapid domain rotation            | Indicates operational resilience            |
| Shared backend infrastructure    | Strong correlation indicator                |
| Browser security warnings        | Valuable investigative evidence             |
| Recruiter communications         | Provide behavioural context                 |
| Cloudflare proxying              | Complicates attribution but not correlation |
| Evidence preservation            | Essential due to short-lived infrastructure |
| Version-controlled documentation | Supports evolving investigations            |

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-045-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-045-01.png) |  Recruiter providing `unitelmatch.cc`    |
| [EV-46-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-046-01.png)  | Browser warning – `unitelmatch.cc`       |
| [EV-047-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-047-01.png) |  Analyst reporting the Google warning.   |
| [EV-48-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-048-01.png)  | Recruiter explaining that they would contact the IT team  |
| [EV-49-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png)  | Recruiter providing `unitelmatch.cyou`    |
| [EV-50-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-050-01.png)  |Recruiter checking if analyst has logged in."  |
| [EV-51-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png)  | Recruiter explaining that the warning was due to a "platform upgrade."  |
| [EV-52-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-052-01.png) | Repository update to Version 1.1  |
| [EV-053-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-053-07.png) |  Timeline showing the progression from `occupationoasis.com` to `unitelmatch.cyou`.    |
| [EV-055-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-055-01.png) | Browser Developer Tools (Network tab) – occupationoasis.com  |
| [EV-056-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-056-01.png) | Browser Developer Tools (Network tab) – unitelmatch.top      |
| [EV-057-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-057-01.png) | Browser Developer Tools (Network tab) – unitelmatch.cyou     |
| [EV-058-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-058-01.png) | Request headers – unitelmatch.cyou showing `merchant-id: 42` |
| [EV-059-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-01.png), [EV-059-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-02.png), [EV-059-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-03.png), [EV-059-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-04.png) | Request headers – unitelmatch.top                      |
| [EV-060-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-01.png), [EV-060-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-02.png), [EV-060-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-03.png), [EV-060-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-04.png), [EV-060-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-05.png) API requests to `www.ioutrankap.cyou` |
| | [EV-066-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-01.png), [EV-066-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-02.png), [EV-066-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-03.png), [EV-066-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-04.png) |  VirusTotal Detection results & history – occupationoasis  |
| [EV-067-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-01.png), [EV-067-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-02.png), [EV-067-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-03.png), [EV-067-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-04.png) |  VirusTotal Detection results & history – linkroles  |
| [EV-068-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-01.png), [EV-068-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-02.png), [EV-068-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-03.png), [EV-068-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-04.png) |  VirusTotal Detection results & history – unitelmatch.top  |
| [EV-069-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-01.png), [EV-069-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-02.png), [EV-069-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-03.png), [EV-069-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-04.png) |  VirusTotal Detection results & history – unitelmatch.cc  |
| [EV-070-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-01.png), [EV-070-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-02.png), [EV-070-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-03.png), [EV-070-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-04.png) |  VirusTotal Detection results & history – unitelmatch.cyou  |
| [EV-071-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-01.png), [EV-071-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-02.png), [EV-071-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-03.png), [EV-071-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-04.png), [EV-071-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-05.png), [EV-071-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-06.png), [EV-071-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – occupationoasis  |
| [EV-072-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-01.png), [EV-072-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-02.png), [EV-072-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-03.png), [EV-072-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-04.png), [EV-072-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-05.png), [EV-072-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-06.png), [EV-072-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – linkroles  |
| [EV-073-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-01.png), [EV-073-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-02.png), [EV-073-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-03.png), [EV-073-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-04.png), [EV-073-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-05.png), [EV-073-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-06.png), [EV-073-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.top  |
| [EV-074-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-01.png), [EV-074-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-02.png), [EV-074-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-03.png), [EV-074-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-04.png), [EV-074-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-05.png), [EV-074-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-06.png), [EV-074-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cc  |

---

# CHANGELOG

## Version 1.2

- Expanded lessons to reflect the transition from a single-domain investigation to a multi-domain campaign analysis.
- Added lessons regarding infrastructure rotation, backend correlation, browser security warnings, and evidence preservation.
- Updated recommended screenshots and related documentation.

---

# Related Documents

- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Campaign_Overview.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Campaign_Overview.md)
- [Confidence_Assessment.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Intelligence_Gaps.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Intelligence_Gaps.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [Methodology.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Methodology.md)
- [MITRE_ATT&CK_Mapping.md.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     