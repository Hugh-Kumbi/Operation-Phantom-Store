# Attack Lifecycle Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected multi-domain remote-recruitment phishing campaign 

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Framework:** Adapted Cyber Kill Chain / Campaign Lifecycle

**Status:** Investigation Complete

**Version:** 2.0

---

# Objective

This document reconstructs the observed campaign as a chronological lifecycle.

Unlike the MITRE ATT&CK mapping, which categorizes adversary behaviors, this analysis focuses on the sequence of events observed during the investigation.

Only stages directly supported by collected evidence are included.

---

# Scope

This lifecycle covers:

- Initial recruitment
- Recruiter communications
- Platform onboarding
- Domain migration
- Cryptocurrency introduction
- Investigation termination

---

# Methodology

The lifecycle was reconstructed using:

- Recruiter conversations
- Investigation timeline
- Screenshots
- Technical analysis
- Infrastructure observations
- Investigator notes

No assumptions were made regarding stages that were not directly observed.

---

# Campaign Lifecycle Overview

```text
                   OPERATION PHANTOM STORE

┌────────────────────────────────────────────────────────────┐
│ 1. Recruitment                                             │
│ • Job advertisement                                        │
│ • occupationoasis.com                                      │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 2. Initial Contact                                         │
│ • Recruiter communication                                  │
│ • Salary discussion                                        │
│ • Trust building                                           │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 3. Initial Onboarding                                      │
│ • linkroles.my                                             │
│ • Account registration                                     │
│ • Store creation                                           │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 4. Platform Migration                                      │
│ • unitelmatch.top                                          │
│ • Continued training                                       │
│ • Operational workflow maintained                          │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 5. Updated Portal                                          │
│ • unitelmatch.cc                                           │
│ • Browser warning observed                                 │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 6. Recruiter Response                                      │
│ • Technical staff mentioned                                │
│ • Replacement platform issued                              │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 7. Backup Portal                                           │
│ • unitelmatch.cyou                                         │
│ • Onboarding continues                                     │
└────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌────────────────────────────────────────────────────────────┐
│ 8. Cryptocurrency Workflow                                 │
│ • Coincheck observed                                       │
│ • Customer support conversation                            │
└────────────────────────────────────────────────────────────┘
```

---

# Stage 1 — Initial Contact

## Observation

The investigator submitted an application through **occupationoasis.com** for a remote employment opportunity.

A recruiter subsequently initiated contact, referencing the application and establishing context for further discussion.

## Supporting Evidence

- Recruiter conversation
- Campaign timeline

## Confidence

**High**

---

# Stage 2 — Rapport Building

## Observation

The recruiter established a conversational relationship before introducing operational details.

Topics included:

- Current employment
- Desired work arrangement
- Salary expectations
- Availability

## Assessment

The conversation resembled a legitimate recruitment process, increasing perceived credibility before onboarding activities began.

## Confidence

**High**

---

# Stage 3 — Opportunity Presentation

## Observation

The recruiter introduced a remote e-commerce opportunity involving:

- Online store management
- Dropshipping
- Commission-based earnings
- Flexible working hours

The recruiter emphasized ease of work and potential income.

## Confidence

**High**

---

# Stage 4 — Training Preparation

## Observation

Rather than requesting immediate participation, the recruiter scheduled a future training session.

This created a structured recruitment experience.

## Confidence

**High**

---

# Stage 5 — Platform Registration

## Observation

The investigator was instructed to:

- Create an account
- Register a store
- Complete onboarding forms
- Submit store information

Registration initially occurred through:

**linkroles.my**

## Confidence

**High**

---

# Stage 6 — Guided Onboarding

## Observation

The recruiter remained actively involved throughout onboarding.

Instructions included:

- Which buttons to click
- How to complete forms
- When to wait for approval
- How to navigate the platform

The investigator completed only actions necessary for observation and documentation.

## Confidence

**High**

---

# Stage 7 — Operational Disruption

## Observation

During onboarding, Google displayed a browser security warning when accessing **linkroles.my**.

The recruiter acknowledged the issue and instructed the investigator to continue using a different platform.

## Confidence

**High**

---

# Stage 8 — Domain Migration

## Observation

The recruiter directed the investigator to:

**unitelmatch.top**

Training resumed using the new domain with minimal interruption.

## Assessment

This demonstrated operational flexibility and continuity.

The investigation does not infer the reason for the migration beyond the observed sequence of events.

## Confidence

**High**

## Lifecycle Stage: Infrastructure Evolution

Following continued communication with the recruiter, additional onboarding domains were introduced.

The investigator documented the following sequence:

1. unitelmatch.cc
2. Browser security warning observed
3. Recruiter consultation with technical staff
4. unitelmatch.cyou supplied as a replacement portal
5. Recruiter attributed the issue to a platform upgrade

Throughout these transitions, the onboarding workflow remained operationally consistent.

---

# Stage 9 — Cryptocurrency Introduction

## Observation

During the training session, the investigator observed:

- OKX Wallet
- Screenshots of cryptocurrency transfers
- Customer support conversations containing cryptocurrency-related images
- Explanations of commission payments

No financial transactions were initiated by the investigator.

## Confidence

**High**

---

# Stage 10 — Investigation and Evidence Collection

## Observation

Throughout the engagement, the investigator:

- Collected screenshots
- Recorded recruiter communications
- Performed passive OSINT
- Conducted infrastructure analysis
- Avoided providing sensitive information
- Did not participate in cryptocurrency transactions

## Confidence

**High**

---

# Stage 11 — Investigation Closure

## Observation

Following completion of evidence collection, the investigation concluded.

All subsequent analysis was performed offline using the collected evidence.

## Confidence

**High**

---

# Comparison with the Cyber Kill Chain

| Cyber Kill Chain Phase | Observed | Notes |
|------------------------|----------|-------|
| Reconnaissance        | Partial      | Recruiter leveraged an existing job application.                                             |
| Weaponization         | Not Observed | No malware or exploit preparation identified.                                                |
| Delivery              | Partial      | Recruitment messages and onboarding links served as the delivery mechanism.                  |
| Exploitation          | Not Observed | No software vulnerabilities were exploited.                                                  |
| Installation          | Not Observed | No malware or persistence mechanisms observed.                                               |
| Command and Control   | Not Observed | No C2 infrastructure identified.                                                             |
| Actions on Objectives | Partial      | The campaign sought continued user engagement through onboarding and platform participation. |

---

# Behavioral Progression

The campaign exhibited a gradual increase in user commitment:

1. Job application acknowledged.
2. Recruiter established rapport.
3. Employment opportunity presented.
4. Training session scheduled.
5. Platform registration requested.
6. Guided onboarding completed.
7. Browser warning encountered.
8. Alternate platform introduced.
9. Cryptocurrency-related workflow demonstrated.

Each stage built upon the previous one, reducing friction and increasing engagement.

## Additional Observed Behaviors

Version 1.1 of the investigation identified additional operational behaviors.

These included:

- Introduction of replacement onboarding portals.
- Recruiter-assisted platform migration.
- Continued communication following browser security warnings.
- Explanation of browser warnings as platform upgrades.
- Maintenance of onboarding continuity through alternative infrastructure.

---

# Defensive Opportunities by Lifecycle Stage

| Lifecycle Stage | Defensive Opportunity |
|-----------------|-----------------------|
| Recruiter Contact           | Verify recruiter identity independently.                                                |
| Opportunity Presentation    | Research company reputation before proceeding.                                          |
| Platform Registration       | Assess domain age and reputation.                                                       |
| Guided Onboarding           | Monitor unusual account creation on newly registered domains.                           |
| Browser Warning             | Treat browser warnings as high-confidence security signals.                             |
| Domain Migration            | Investigate unexpected changes in onboarding platforms.                                 |
| Cryptocurrency Introduction | Exercise additional caution when cryptocurrency becomes part of an employment workflow. |

---

# Analytical Assessment

The observed campaign followed a structured and consistent progression from recruitment through onboarding.

Rather than relying on technical exploitation, the campaign emphasized user interaction, recruiter guidance, and incremental commitment.

The immediate migration to a second operational domain after a browser warning demonstrated adaptability within the observed workflow.

No evidence was collected indicating malware delivery, exploitation of software vulnerabilities, or post-compromise activity.

Accordingly, the lifecycle is best characterized as a recruiter-led social engineering campaign supported by coordinated web infrastructure.

## Version 2.0 Assessment

The additional evidence strengthens the assessment that the observed onboarding process continued across multiple operational domains while maintaining consistent recruiter engagement.

Rather than terminating the onboarding process following browser security warnings, alternative infrastructure was supplied to maintain continuity.

This assessment is based solely on documented observations collected during the investigation.

---

# Key Findings

1. The campaign unfolded through a clearly defined sequence of recruiter-led interactions.
2. Multiple domains supported different stages of the onboarding process.
3. Browser security warnings preceded a transition to an alternate platform.
4. Cryptocurrency-related activity was introduced only after user engagement had been established.
5. The investigation remained entirely observational and did not involve financial participation or unauthorized activity.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png) | Chat              | Initial recruiter contact     | Collected |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png), [EV-002-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-02.png), [EV-002-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-03.png), [EV-002-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-04.png), [EV-002-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-05.png), [EV-002-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-06.png), [EV-002-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-07.png), [EV-002-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-08.png), [EV-002-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-09.png), [EV-002-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-10.png), [EV-002-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-11.png), [EV-002-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-12.png), [EV-002-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-13.png), [EV-002-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-14.png), [EV-002-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-15.png), [EV-002-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-16.png), [EV-002-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-17.png), [EV-002-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-18.png), [EV-002-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-19.png), [EV-002-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-20.png), [EV-002-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-21.png), [EV-002-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-22.png), [EV-002-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-23.png), [EV-002-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-24.png), [EV-002-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-25.png), [EV-002-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-26.png), [EV-002-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-27.png), [EV-002-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-28.png), [EV-002-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-29.png), [EV-002-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-30.png), [EV-002-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-31.png), [EV-002-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-32.png), [EV-002-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-33.png), [EV-002-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-34.png), [EV-002-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-35.png), [EV-002-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-36.png), [EV-002-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-37.png), [EV-002-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-38.png), [EV-002-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-39.png), [EV-002-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-40.png), [EV-002-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-41.png), [EV-002-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-42.png), [EV-002-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-43.png), [EV-002-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-44.png), [EV-002-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-45.png), [EV-002-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-46.png), [EV-002-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-47.png), [EV-002-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-48.png), [EV-002-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-49.png), [EV-002-50](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-50.png), [EV-002-51](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-51.png), [EV-002-52](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-52.png), [EV-002-53](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-53.png), [EV-002-54](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-54.png), [EV-002-55](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-55.png), [EV-002-56](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-56.png), [EV-002-57](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-57.png), [EV-002-58](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-58.png), [EV-002-59](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-59.png), [EV-002-60](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-60.png), [EV-002-61](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-61.png), [EV-002-62](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-62.png), [EV-002-63](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-63.png), [EV-002-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-64.png), [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png), [EV-002-66](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-66.png), [EV-002-67](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-67.png), [EV-002-68](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-68.png), [EV-002-69](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-69.png), [EV-002-70](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-70.png), [EV-002-71](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-71.png), [EV-002-72](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-72.png), [EV-002-73](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-73.png), [EV-002-74](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-74.png), [EV-002-75](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-75.png), [EV-002-76](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-76.png), [EV-002-77](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-77.png), [EV-002-78](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-78.png), [EV-002-79](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-79.png), [EV-002-80](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-80.png), [EV-002-81](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-81.png), [EV-002-82](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-82.png), [EV-002-83](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-83.png), [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png), [EV-002-85](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-85.png), [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png) | Recruiter communications          |
| [EV-038-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-038-01.png) | Recruiter instructions directing migration to unitelmatch.top |
| [EV-045-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-045-01.png) |  Recruiter providing `unitelmatch.cc`  |
| [EV-49-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png) | Recruiter providing `unitelmatch.cyou`  |
| [EV-51-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png) | Recruiter explaining that the warning was due to a "platform upgrade."  |
| [EV-053-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-053-01.png) | Investigation timeline            |
| [EV-005-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-01.png), [EV-005-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-02.png), [EV-005-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-03.png), [EV-005-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-04.png), [EV-005-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-05.png), [EV-005-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-06.png), [EV-005-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-005-07.png) | Chat              | Registration instructions     | Collected |
| [EV-006-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-01.png), [EV-006-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-02.png), [EV-006-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-03.png), [EV-006-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-04.png), [EV-006-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-05.png) | Platform registration screenshots |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) | Browser warning                   |
| [EV-006-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-006-01.png), [EV-013-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-013-01.png), [EV-013-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-013-02.png), [EV-013-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-013-03.png) | Domain migration observations     |
| [EV-036-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-01.png), [EV-036-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-02.png), [EV-036-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-03.png) | Cryptocurrency observations       |
| [EV-034-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-01.png), [EV-034-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-02.png), [EV-034-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-03.png)  | Technical infrastructure analysis – occupationoasis   | 
| [EV-034-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-04.png), [EV-034-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-05.png)  | Technical infrastructure analysis – linkroles  | 
| [EV-034-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-06.png), [EV-034-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-07.png)  | Technical infrastructure analysis – unitelmatch.top  |
| [EV-034-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-08.png), [EV-034-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-09.png)  | Technical infrastructure analysis – unitelmatch.cc  |
| [EV-034-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-10.png), [EV-034-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-11.png)  | Technical infrastructure analysis – unitelmatch.cyou  |
| [EV-034-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-12.png), [EV-034-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-13.png), [EV-034-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-14.png), [EV-034-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-15.png), [EV-034-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-16.png) | Technical infrastructure analysis – ioutrankap.cyou |

---

# Confidence Assessment

| Lifecycle Stage | Confidence |
|-----------------|------------|
| Initial Contact             | High |
| Rapport Building            | High |
| Opportunity Presentation    | High |
| Platform Registration       | High |
| Guided Onboarding           | High |
| Browser Warning             | High |
| Domain Migration            | High |
| Cryptocurrency Introduction | High |
| Campaign Conclusion         | High |

---

# Related Documents

- [Campaign_Overview.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Campaign_Overview.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [Intelligence_Gaps.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Intelligence_Gaps.md)
- [Lessons_Learned.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Lessons_Learned.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     