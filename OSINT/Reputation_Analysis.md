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

# Screenshots

Recommended additions:

## VirusTotal

- Detection results for all five domains.
- Detection history (where available).

## URLScan

- Scan summary pages.
- Classification results.
- Structural similarity findings for `unitelmatch.cyou`.

## Google Safe Browsing

- Browser warning for `linkroles.my`.
- Browser warning for `unitelmatch.cc`.

## Recruiter Conversation

Include screenshots showing:

- Recruiter providing `unitelmatch.cc`.
- User reporting the Google warning.
- Recruiter providing `unitelmatch.cyou`.
- Recruiter explaining that the warning was due to a "platform upgrade."

These screenshots provide strong evidence linking technical infrastructure changes with the recruiter's operational behaviour.

---

# Related Documents

- osint/infrastructure.md
- osint/domain_relationships.md
- analysis/Attack_Lifecycle.md
- analysis/Social_Engineering_Analysis.md
- analysis/Indicators_of_Compromise.md

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
| [EV-066-01](), [EV-066-02](), [EV-066-03](), [EV-066-04]() |  VirusTotal Detection results & history – occupationoasis                               |
| [EV-067-01](), [EV-067-02](), [EV-067-03](), [EV-067-04]() |  VirusTotal Detection results & history – linkroles                                     |
| [EV-068-01](), [EV-068-02](), [EV-068-03](), [EV-068-04]() |  VirusTotal Detection results & history – unitelmatch.top                               |
| [EV-069-01](), [EV-069-02](), [EV-069-03](), [EV-069-04]() |  VirusTotal Detection results & history – unitelmatch.cc                                |
| [EV-070-01](), [EV-070-02](), [EV-070-03](), [EV-070-04]() |  VirusTotal Detection results & history – unitelmatch.cyou                              |

| [EV-037-01]() |  URLScan summary pages, Classification results & Structural similarity findings – occupationoasis                               |
| [EV-037-01]() |  URLScan summary pages, Classification results & Structural similarity findings – linkroles                                     |
| [EV-037-01]() |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.top                               |
| [EV-037-01]() |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cc                                |
| [EV-037-01]() |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cyou                              |

| [EV-037-01]() |  Browser warning – occupationoasis                               |
| [EV-037-01]() |  Browser warning – linkroles                                     |
| [EV-037-01]() |  Browser warning – unitelmatch.top                               |
| [EV-037-01]() |  Browser warning – unitelmatch.cc                                |
| [EV-037-01]() |  Browser warning – unitelmatch.cyou                              |

| [EV-037-01]() |  Recruiter providing `unitelmatch.cc`                               |
| [EV-037-01]() |  Analyst reporting the Google warning.                                     |
| [EV-037-01]() |  Recruiter providing `unitelmatch.cyou`                               |
| [EV-037-01]() |  Recruiter explaining that the warning was due to a "platform upgrade."                                |


| [EV-037-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-037-01.png) | Browser warning for linkroles.my                              |
| [EV-038-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-038-01.png) | Recruiter instructions directing migration to unitelmatch.top    |
| [EV-039-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-039-01.png) | Browser observations during investigation                      |
| [EV-040-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-040-01.png) | Search engine observations                              |

---

# Confidence Assessment

| Finding | Confidence |
|---------|------------|
| Google browser warning observed for linkroles.my                    | High |
| Recruiter redirected analyst to unitelmatch.top                     | High |
| No browser warning observed for occupationoasis.com                 | High |
| No browser warning observed for unitelmatch.top during collection   | High |
| Reputation observations accurately reflect the investigation period | High |

---

# Related Documents

- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md    )
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
