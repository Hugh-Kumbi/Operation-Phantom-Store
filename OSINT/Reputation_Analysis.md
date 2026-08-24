# Reputation Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Active Investigation

**Version:** 1.2

---

# Objective

This document assesses the external reputation of the domains identified during the investigation using publicly available threat intelligence and reputation services.

The analysis incorporates observations from:

- VirusTotal
- URLScan.io
- Google Safe Browsing
- Shodan
- Censys
- Browser security warnings
- Passive OSINT

The objective is to determine whether the observed domains had previously been identified as malicious, suspicious, or associated with phishing activity, and to examine how their reputation evolved throughout the campaign.

---

# Domains Analysed

| Domain | Operational Role |
|--------|------------------|
| occupationoasis.com | Recruitment website       |
| linkroles.my        | First operational portal  |
| unitelmatch.top     | Second operational portal |
| unitelmatch.cc      | Third operational portal  |
| unitelmatch.cyou    | Backup operational portal |

---

# Reputation Summary

| Domain | Overall Assessment |
|--------|--------------------|
| occupationoasis.com | Legitimate / Professional Marketing Site |
| linkroles.my        | Highly Suspicious                        |
| unitelmatch.top     | Confirmed Malicious                      |
| unitelmatch.cc      | Confirmed Malicious                      |
| unitelmatch.cyou    | Confirmed Malicious                      |

---

# Reputation Evolution

The reputation of the observed infrastructure deteriorated throughout the investigation.

```text
OccupationOasis
Legitimate

        │

Recruitment

        ▼

LinkRoles

High Risk

        ▼

UnitelMatch.top

Malicious

        ▼

UnitelMatch.cc

Malicious

        ▼

UnitelMatch.cyou

Malicious
```

This progression closely matched the recruiter's migration of users between operational portals.

---

# OccupationOasis

## VirusTotal

Detection

```
0 / 92
```

No security vendors identified the domain as malicious.

---

## URLScan

Classification

- Newly registered website
- Jobs

No suspicious outbound infrastructure was observed during passive scanning.

---

## Google Safe Browsing

No browser security warnings were encountered during the investigation.

---

## Shodan

No significant findings.

---

## Assessment

The recruitment website presented as a professionally developed marketing site hosted on Amazon Web Services.

No significant public reputation indicators suggested malicious activity at the time of analysis.

---

# LinkRoles

## VirusTotal

Detection

```
0 / 92
```

No vendors had yet classified the domain as malicious.

Considering the domain age, this result is not unexpected.

---

## URLScan

Classification

High Confidence

Suspicious

---

## Google Safe Browsing

During the investigation, Google Chrome displayed a security warning identifying the website as dangerous.

This warning prompted the recruiter to migrate the investigation to another operational portal.

---

## Shodan

No results.

Cloudflare prevented direct infrastructure discovery.

---

## Assessment

Despite limited antivirus detections, independent browser protections and URLScan identified suspicious behaviour.

This demonstrates that reputation systems can differ significantly depending on detection methodology.

---

# UnitelMatch.top

## VirusTotal

Detection

```
4 / 92
```

Multiple security vendors identified the domain as malicious.

---

## URLScan

Classification

Phishing and Other Frauds

---

## Google Safe Browsing

Browser warnings were consistent with malicious reputation.

---

## Shodan

No results.

Protected by Cloudflare.

---

## Assessment

This represents the first observed operational portal that had accumulated multiple malicious classifications.

---

# UnitelMatch.cc

## VirusTotal

Detection

```
2 / 92
```

Detected as malicious by multiple vendors.

Examples included:

- Forcepoint ThreatSeeker

---

## Browser Observation

Google Chrome displayed a "Dangerous Site" warning when attempting to access the portal.

The recruiter immediately responded by providing an alternative domain (`unitelmatch.cyou`) and described the warning as a routine platform upgrade.

This interaction directly links the infrastructure rotation to browser security detections.

---

## URLScan

Limited public results.

Likely influenced by Cloudflare protections.

---

## Assessment

The browser warning and immediate domain migration represent one of the strongest behavioural indicators observed during the investigation.

---

# UnitelMatch.cyou

## VirusTotal

Detection

```
0 / 92
```

No vendors had classified the domain as malicious at the time of collection.

---

## URLScan

One public scan.

No formal classification.

---

## Structure Similarity

URLScan identified structural similarity with:

- linkroles.my
- unitelmatch.top
- unitelmatch.cc

This independent observation supports the technical correlation between the operational portals.

---

## Google Safe Browsing

No browser warning was observed during initial analysis.

The domain appears to have been deployed before widespread reputation systems had accumulated sufficient intelligence.

---

## Assessment

Although public reputation services had not yet classified the domain as malicious, its infrastructure, application behaviour, and structural similarity strongly aligned with previously identified operational portals.

---

# Reputation Comparison

| Feature | OccupationOasis | LinkRoles | UnitelMatch.top | UnitelMatch.cc | UnitelMatch.cyou |
|---------|-----------------|-----------|-----------------|----------------|------------------|
| VirusTotal Detection      | 0/92      | 0/92       | 4/92     | 2/92     | 0/92             |
| URLScan Classification    | Jobs      | Suspicious | Phishing | Limited  | None             |
| Google Warning            | No        | Yes        | Yes      | Yes      | No               |
| Cloudflare Protected      | No        | Yes        | Yes      | Yes      | Yes              |
| Newly Registered          | Yes       | Yes        | Yes      | Yes      | Yes              |

---

# Behavioural Observations

Throughout the investigation, the recruiter repeatedly migrated victims between newly registered domains.

Observed sequence:

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

Each migration occurred shortly after operational issues or browser security warnings.

This behaviour is consistent with infrastructure rotation intended to maintain campaign availability.

---

# Analytical Assessment

The reputation analysis demonstrates a clear divergence between the recruitment website and the operational portals.

**Recruitment Infrastructure**

- Professional presentation.
- No significant reputation indicators.
- Hosted on Amazon Web Services.

**Operational Infrastructure**

- Newly registered domains.
- Increasing malicious classifications.
- Browser security warnings.
- Shared infrastructure.
- Frequent domain rotation.

While reputation data alone is insufficient to establish malicious intent, it provides valuable supporting evidence when considered alongside the infrastructure, application, and behavioural analysis documented elsewhere in this investigation.

---

# CHANGELOG

## Version 1.2

- Added reputation analysis for `unitelmatch.cc`.
- Added reputation analysis for `unitelmatch.cyou`.
- Expanded analysis from three to five domains.
- Documented Google Safe Browsing warnings.
- Added infrastructure rotation analysis.
- Correlated browser warnings with recruiter behaviour.
- Included URLScan structural similarity observations.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-066-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-01.png), [EV-066-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-02.png), [EV-066-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-03.png), [EV-066-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-04.png), [EV-034-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-01.png), [EV-034-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-02.png), [EV-034-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-03.png) |  VirusTotal Detection results & history – occupationoasis                               |
| [EV-067-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-01.png), [EV-067-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-02.png), [EV-067-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-03.png), [EV-067-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-04.png), [EV-034-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-04.png), [EV-034-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-05.png) |  VirusTotal Detection results & history – linkroles                                     |
| [EV-068-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-01.png), [EV-068-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-02.png), [EV-068-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-03.png), [EV-068-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-04.png), [EV-034-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-06.png), [EV-034-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-07.png) |  VirusTotal Detection results & history – unitelmatch.top                               |
| [EV-069-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-01.png), [EV-069-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-02.png), [EV-069-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-03.png), [EV-069-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-04.png), [EV-034-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-08.png), [EV-034-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-09.png) |  VirusTotal Detection results & history – unitelmatch.cc                                |
| [EV-070-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-01.png), [EV-070-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-02.png), [EV-070-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-03.png), [EV-070-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-04.png), [EV-034-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-10.png), [EV-034-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-11.png) |  VirusTotal Detection results & history – unitelmatch.cyou                              |
| [EV-071-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-01.png), [EV-071-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-02.png), [EV-071-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-03.png), [EV-071-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-04.png), [EV-071-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-05.png), [EV-071-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-06.png), [EV-071-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – occupationoasis                               |
| [EV-072-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-01.png), [EV-072-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-02.png), [EV-072-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-03.png), [EV-072-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-04.png), [EV-072-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-05.png), [EV-072-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-06.png), [EV-072-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – linkroles                                     |
| [EV-073-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-01.png), [EV-073-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-02.png), [EV-073-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-03.png), [EV-073-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-04.png), [EV-073-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-05.png), [EV-073-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-06.png), [EV-073-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.top                               |
| [EV-074-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-01.png), [EV-074-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-02.png), [EV-074-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-03.png), [EV-074-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-04.png), [EV-074-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-05.png), [EV-074-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-06.png), [EV-074-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cc                                |
| [EV-075-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-01.png), [EV-075-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-02.png), [EV-075-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-03.png), [EV-075-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-04.png), [EV-075-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-05.png), [EV-075-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-06.png), [EV-075-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cyou                              |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png) |  Browser warning – linkroles                                     |
| [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png) |  Browser warning – unitelmatch.top                               |
| [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) |  Browser warning – unitelmatch.cc                                |
| [EV-012-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-04.png) |  Browser warning – unitelmatch.cyou                              |
| [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png) | Recruiter instructions directing migration to unitelmatch.top    |
| [EV-045-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-045-01.png) |  Recruiter providing `unitelmatch.cc`                               |
| [EV-047-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-047-01.png) |  Analyst reporting the Google warning.                                     |   
| [EV-51-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png) | Recruiter explaining that the warning was due to a "platform upgrade."  |                
| [EV-049-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png) |  Recruiter providing `unitelmatch.cyou`  |

| [EV-039-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-039-01.png) | Browser observations during investigation                      |
| [EV-040-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-040-01.png) | Search engine observations                              |

---

# Related Documents

- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)


---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
