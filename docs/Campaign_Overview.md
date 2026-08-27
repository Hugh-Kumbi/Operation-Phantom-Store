# Campaign Overview

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Active Investigation

**Version:** 1.0

---

# Executive Overview

This document provides a high-level overview of the recruitment campaign observed during the investigation.

Following an application submitted through the Occupation Oasis website, the analyst engaged with a recruiter who introduced multiple online platforms as part of an onboarding process for a purported remote e-commerce position.

## Observed Campaign Infrastructure

During the investigation, the recruiter introduced multiple web domains as part of the onboarding workflow. As the investigation progressed, replacement portals were supplied following browser access issues and security warnings.

| Domain | Observed Role | Status |
|--------|---------------|--------|
| occupationoasis.com | Initial recruitment platform  | Observed                                    |
| linkroles.my        | Initial onboarding portal     | Replaced                                    |
| unitelmatch.top     | Replacement onboarding portal | Replaced                                    |
| unitelmatch.cc      | Updated onboarding portal     | Replaced following browser security warning |
| unitelmatch.cyou    | Backup onboarding portal      | Active during investigation                 |

The progression from one operational platform to another was documented and preserved as evidence for further technical analysis.

No determination regarding the legitimacy or intent of the operators is made within this document. The focus is limited to documenting observable events and technical characteristics.

---

# Campaign Objectives (Observed)

Based on recruiter communications and platform interactions, the observed workflow appeared designed to:

- Recruit individuals seeking remote employment.
- Direct applicants to a dedicated onboarding platform.
- Facilitate account registration.
- Require the creation of a storefront profile.
- Introduce an order management workflow.
- Request identity verification before full platform access.

These objectives describe the observed onboarding process and do not represent conclusions regarding intent.

---

# Campaign Timeline (High-Level)

```text
Remote Job Advertisement
        │
        ▼
Application Submitted
        │
        ▼
Recruiter Contact
        │
        ▼
Introduction to Remote E-commerce Opportunity
        │
        ▼
Registration via linkroles.my
        │
        ▼
Store Creation
        │
        ▼
Identity Verification Requested
        │
        ▼
Google Safe Browsing Warning Observed
        │
        ▼
Recruiter Introduces unitelmatch.top
        │
        ▼
Investigation Continues
```

---

# Campaign Components

## Recruitment

The analyst initially encountered the opportunity through the Occupation Oasis platform, which advertised multiple remote work opportunities.

Evidence:

- [EV-001-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-01.png)
- [EV-001-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-02.png)
- [EV-001-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-03.png)
- [EV-001-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-04.png)
- [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png)

---

## Initial Contact

Communication was initiated by a recruiter following submission of the job application.

The recruiter introduced a remote e-commerce position involving:

- Online store management
- Order processing
- Customer communication
- Remote work
- Commission-based earnings

Evidence:

- [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png)
- [EV-003-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-01.png)
- [EV-003-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-02.png)
- [EV-003-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-03.png)
- [EV-003-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-04.png)
- [EV-003-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-05.png)
- [EV-003-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-06.png)
- [EV-003-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-07.png)
- [EV-003-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-08.png)
- [EV-003-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-09.png)
- [EV-003-010](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-10.png)
- [EV-003-011](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-11.png)
- [EV-003-012](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-12.png)
- [EV-003-013](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-13.png)
- [EV-003-014](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-14.png)
- [EV-003-015](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-15.png)
- [EV-003-016](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-16.png)
- [EV-003-017](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-17.png)
- [EV-003-018](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-18.png)

---

## Onboarding Platform

The recruiter instructed the analyst to register an account using:

**linkroles.my**

Observed activities included:

- Account registration
- Storefront setup
- Profile completion
- Platform familiarization

Evidence:

- [EV-006-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-01.png)
- [EV-006-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-02.png)
- [EV-006-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-03.png)
- [EV-006-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-04.png)
- [EV-006-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-05.png)
- [EV-007-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-007-01.png)
- [EV-009-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-009-01.png)

---

## Platform Transition

During the investigation, the investigator observed a Google Safe Browsing warning when accessing the onboarding platform.

Following this event, the recruiter instructed the investigator to continue using:

**unitelmatch.top**

The reason for the platform transition has not been independently verified.

Evidence:

- [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png)
- [EV-013-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-013-01.png)

---

## Identity Verification

The onboarding workflow included requests for documentation intended to verify the applicant's identity.

Examples included:

- Government-issued identification
- Utility bill
- Storefront information

Evidence:

- [EV-008-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-008-01.png)
- [EV-008-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-008-02.png)
- [EV-008-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-008-03.png)

The investigation documents the request itself and does not assess whether the request was appropriate or inappropriate without additional context.

---

# Infrastructure Summary

The investigation identified multiple internet domains associated with the recruitment workflow.

| Component | Observation |
|-----------|-------------|
| Recruitment Website  | occupationoasis.com |
| Initial Platform     | linkroles.my        |
| Replacement Platform | unitelmatch.top     |

Each platform will be analyzed independently within the technical sections of this repository.

---

# Evidence Summary

| Evidence ID | Description |
|-------------|-------------|
| [EV-001-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-01.png), [EV-001-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-02.png), [EV-001-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-03.png), [EV-001-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-04.png) | Occupation Oasis job advertisement   |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png) | Initial recruiter communication      |
| [EV-003-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-01.png), [EV-003-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-02.png), [EV-003-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-03.png), [EV-003-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-04.png), [EV-003-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-05.png), [EV-003-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-06.png),  [EV-003-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-07.png),[EV-003-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-08.png), [EV-003-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-09.png), [EV-003-010](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-10.png), [EV-003-011](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-11.png), [EV-003-012](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-12.png), [EV-003-013](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-13.png), [EV-003-014](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-14.png), [EV-003-015](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-15.png), [EV-003-016](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-16.png), [EV-003-017](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-17.png), [EV-003-018](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-18.png) | Position description                 |
| [EV-004-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-004-01.png), [EV-004-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-004-02.png), [EV-004-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-004-03.png), [EV-004-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-004-04.png), [EV-004-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-004-05.png), [EV-004-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-004-06.png) | Compensation discussion              |
| [EV-005-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-01.png), [EV-005-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-02.png), [EV-005-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-03.png), [EV-005-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-04.png), [EV-005-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-05.png), [EV-005-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-06.png), [EV-005-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-07.png) | Onboarding instructions              |
| [EV-006-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-01.png), [EV-006-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-02.png), [EV-006-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-03.png), [EV-006-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-04.png), [EV-006-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-05.png) | Registration portal                  |
| [EV-007-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-007-01.png) | Store creation interface             |
| [EV-008-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-008-01.png), [EV-008-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-008-02.png), [EV-008-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-008-03.png) | Identity verification request        |
| [EV-009-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-009-01.png) | linkroles.my URL                     |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) | Google Safe Browsing warning         |
| [EV-03-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-15.png) | Recruiter introduces unitelmatch.top |

---

# Intelligence Assessment

At the current stage of the investigation, the following observations have been verified:

- Multiple domains were used throughout the recruitment workflow.
- The onboarding platform changed during the investigation.
- Identity verification was requested during onboarding.
- Technical analysis of the associated infrastructure is ongoing.

These observations provide the foundation for subsequent infrastructure, domain, reputation, and social engineering analysis.

No conclusions regarding malicious intent or fraudulent activity are presented in this document.

---

# Confidence Assessment

| Finding | Confidence |
|---------|------------|
| Occupation Oasis used for initial application | High |
| Recruiter introduced linkroles.my             | High |
| Google Safe Browsing warning observed         | High |
| Recruiter introduced unitelmatch.top          | High |
| Multiple domains involved in workflow         | High |

---

# Related Documents

- [Methodology.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Methodology.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md) 
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     