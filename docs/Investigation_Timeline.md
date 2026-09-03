# Investigation Timeline

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Recruitment Campaign

**Classification:** Cyber Threat Intelligence (CTI)

**Status:** Investigation Updated

**Version:** 1.1

---

# Purpose

This timeline reconstructs the investigation chronologically using documented observations, recruiter communications, technical analysis, and collected evidence.

Only events directly observed during the investigation are included.

Analytical conclusions are documented separately within the Findings and Analysis sections of this repository.

---

# Investigation Timeline

| Phase | Event | Evidence |
|-------|-------|----------|
| Phase 1  | Analyst discovers remote job advertisement on **occupationoasis.com**                         | Recruiter advertisement  |
| Phase 2  | Job application submitted                                                                     | Analyst observation      |
| Phase 3  | Recruiter establishes initial contact                                                         | Chat transcript          |
| Phase 4  | Recruiter explains remote dropshipping business model                                         | Chat transcript          |
| Phase 5  | Recruiter discusses salary, commission, and onboarding process                                | Chat transcript          |
| Phase 6  | Training session scheduled                                                                    | Chat transcript          |
| Phase 7  | Analyst instructed to register on **linkroles.my**                                            | Recruiter instructions   |
| Phase 8  | Store registration and onboarding completed on **linkroles.my**                               | Screenshots              |
| Phase 9  | Google Safe Browsing warning observed for **linkroles.my**                                    | Analyst observation      |
| Phase 10 | Recruiter instructs migration to **unitelmatch.top**                                          | Chat transcript          |
| Phase 11 | Training continues on **unitelmatch.top**                                                     | Screenshots              |
| Phase 12 | Cryptocurrency-related activity observed during training                                      | Analyst observation      |
| Phase 13 | Passive OSINT investigation initiated                                                         | Investigation notes      |
| Phase 14 | DNS, WHOIS, SSL certificate, and infrastructure analysis performed                            | Technical analysis       |
| Phase 15 | Technology stack and reputation analysis completed                                            | Technical analysis       |
| Phase 16 | Initial CTI documentation completed (Version 1.0)                                             | Repository documentation |
| Phase 17 | Google Safe Browsing warning observed for **unitelmatch.top**                                 | Analyst observation      |
| Phase 18 | Recruiter provides a new portal: **unitelmatch.cc**                                           | Chat transcript          |
| Phase 19 | Analyst attempts to access **unitelmatch.cc**                                                 | Analyst observation      |
| Phase 20 | Google Safe Browsing displays a warning identifying **unitelmatch.cc** as a dangerous website | Analyst observation      |
| Phase 21 | Analyst asks the recruiter to explain the warning                                             | Chat transcript          |
| Phase 22 | Recruiter states they will consult the technical staff                                        | Chat transcript          |
| Phase 23 | Recruiter provides **unitelmatch.cyou** as a backup portal                                    | Chat transcript          |
| Phase 24 | Recruiter instructs analyst to continue onboarding using the backup portal                    | Chat transcript          |
| Phase 25 | Recruiter later explains that the warning was caused by a "platform upgrade" and tells the analyst not to worry | Chat transcript |
| Phase 26 | Investigation expanded to include the newly observed domains                                  | Investigation notes      |
| Phase 27 | Repository updated to Version 1.1                                                             | Repository documentation |

---

# Detailed Timeline

## Phase 1 – Initial Recruitment

The investigation began when the analyst discovered a remote employment opportunity advertised through **occupationoasis.com**.

Following the application, a recruiter initiated contact and introduced a remote e-commerce opportunity involving store management and dropshipping.

**Evidence**

- Recruiter messages
- Job advertisement

---

## Phase 2 – Guided Onboarding

The recruiter guided the analyst through:

- Employment discussion
- Salary explanation
- Platform registration
- Store setup
- Training schedule

The initial onboarding platform was:

**linkroles.my**

---

## Phase 3 – First Platform Migration

While accessing **linkroles.my**, the analyst observed a Google Safe Browsing warning.

The recruiter responded by directing the analyst to continue using:

**unitelmatch.top**

Training resumed on the replacement platform.

---

## Phase 4 – Cryptocurrency Observations

During the training process, the analyst observed:

- OKX Wallet
- Cryptocurrency transfer screenshots
- Customer support conversations containing cryptocurrency-related images
- Explanations regarding commissions and platform operations

The analyst did not conduct any cryptocurrency transactions.

---

## Phase 5 – Technical Investigation

Following the onboarding process, a structured OSINT investigation was conducted.

Activities included:

- DNS analysis
- Passive DNS analysis
- WHOIS analysis
- Reverse DNS lookups
- Certificate Transparency analysis
- SSL certificate analysis
- Technology fingerprinting
- Infrastructure analysis
- Reputation assessment

These findings formed the basis of Version 1.0 of the investigation.

---

## Phase 6 – Second Platform Migration

During a subsequent conversation, the recruiter instructed the analyst to access a newly introduced portal:

**unitelmatch.cc**

**Evidence:**

- ![EV-045-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-045-01.png)

After attempting to access the site, the analyst observed that Google Safe Browsing displayed a warning indicating that the website was considered dangerous.

**Evidence:**

- ![EV-046-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-046-01.png)

The analyst informed the recruiter and requested clarification.

**Evidence:**

- ![EV-047-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-047-01.png)

The recruiter replied that they would consult their technical staff regarding the warning.

**Evidence:**

- ![EV-48-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-048-01.png)

Shortly afterwards, the recruiter supplied another portal:

**unitelmatch.cyou**

**Evidence:**

- ![EV-49-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png)

The recruiter instructed the analyst to continue using the new portal while awaiting a technical explanation.

**Evidence:**

- ![EV-050-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-050-01.png) 

Later, the recruiter stated:

> "That's just the platform upgrading, it's nothing to worry about."

The investigation records this explanation as an observed statement made by the recruiter and does not independently verify its accuracy.

**Evidence:**

- ![EV-51-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png)

---

## Phase 7 – Investigation Expansion

The discovery of two additional portals prompted an expansion of the investigation.

The repository was updated to include:

- Additional infrastructure analysis
- Updated campaign overview
- Expanded attack lifecycle
- Revised findings
- Updated indicators of compromise
- Additional detection opportunities
- Revised confidence assessment

The investigation now documents five observed domains associated with the recruiter-led onboarding workflow.

---

# Domain Progression

```text
occupationoasis.com
        │
        ▼
linkroles.my
        │
 Google Safe Browsing Warning
        │
        ▼
unitelmatch.top
        │
 Google Safe Browsing Warning
        │
        ▼
unitelmatch.cc
        │
 Google Safe Browsing Warning
        │
        ▼
unitelmatch.cyou
```

---

# Key Observations

The investigation identified several recurring patterns throughout the campaign:

- Structured recruiter-led onboarding.
- Progressive trust-building through staged interactions.
- Repeated migration between operational domains.
- Browser security warnings preceding domain changes.
- Continued use of newly introduced backup portals.
- Introduction of cryptocurrency-related concepts during later stages of onboarding.

These observations are supported by recruiter communications, screenshots, analyst notes, and technical analysis.

---

# Evidence Summary

| Evidence ID | Description |
|-------------|-------------|
| [EV-001-01 – EV-044-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Evidence/Screenshots)               | Initial investigation evidence (Version 1.0)                             |
| [EV-045-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-045-01.png)             | Recruiter introduces **unitelmatch.cc**                                    |
| [EV-046-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-046-01.png)             | Google Safe Browsing warning observed for **unitelmatch.cc**            |
| [EV-047-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-047-01.png)             | Analyst questions the browser warning                                    |
| [EV-048-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-048-01.png)             | Recruiter states they will consult technical staff                         |
| [EV-049-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png)             | Recruiter introduces **unitelmatch.cyou**                                  |
| [EV-050-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-050-01.png)             | Recruiter instructs analyst to continue onboarding using the backup portal |
| [EV-051-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png)             | Recruiter explains the issue as a platform upgrade                         |
| [EV-052-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-052-01.png)             | Repository updated to Version 1.1                                           |

---

# Related Documents

- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Campaign_Overview.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Campaign_Overview.md)
- [Confidence_Assessment.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Evidence_Register.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Evidence_Register.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     