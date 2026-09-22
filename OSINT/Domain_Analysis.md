# Domain Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Recruitment Campaign

**Classification:** Open Source Intelligence (OSINT)

**Version:** 2.0

---

# Purpose

This document provides a consolidated analysis of all domains identified during the investigation.

The analysis combines technical observations, recruiter communications, and infrastructure characteristics to understand the role of each domain within the observed onboarding workflow.

No attribution is made beyond the available evidence.

---

# Domain Summary

| Domain | Observed Role | Status |
|--------|---------------|--------|
| occupationoasis.com | Recruitment website           | Observed                    |
| linkroles.my        | Initial onboarding portal     | Replaced                    |
| unitelmatch.top     | Replacement onboarding portal | Replaced                    |
| unitelmatch.cc      | Updated onboarding portal     | Replaced                    |
| unitelmatch.cyou    | Backup onboarding portal      | Active during investigation |

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

# Comparative Analysis

| Domain | Hosting | Registrar | Primary Technologies | Browser Warning |
|--------|---------|-----------|----------------------|-----------------|
| occupationoasis.com | AWS / CloudFront | Amazon Registrar     | Nuxt.js, Vue.js | No                                  |
| linkroles.my        | Cloudflare       | Gname.com            | Cloudflare      | Yes (observed during investigation) |
| unitelmatch.top     | Cloudflare       | Global Asset Domains | Vue.js          | Yes                                 |
| unitelmatch.cc      | Cloudflare       | Dynadot Inc          | Cloudflare      | Yes                                 |
| unitelmatch.cyou    | Cloudflare       | Global Asset Domains | Cloudflare      | Not observed                        |

---

# Technical Similarities

Across the observed domains, the investigation identified:

- Modern JavaScript frameworks.
- Cloud-hosted infrastructure.
- HTTPS enabled.
- Valid SSL certificates.
- Recruiter-guided onboarding.
- Similar operational purpose.

---

# Behavioral Correlation

Each domain was introduced directly by the recruiter as part of a continuous onboarding workflow.

Observed behaviors remained consistent across domain changes:

- Guided registration.
- Store creation.
- Training.
- Platform migration.
- Continued communication.

---

# Domain Relationships

The domains served different operational stages while supporting a single observed onboarding process.

```text
Recruitment
      │
      ▼
occupationoasis.com

      │

Onboarding
      │
      ▼
linkroles.my

      │

Migration
      │
      ▼
unitelmatch.top

      │

Updated Portal
      │
      ▼
unitelmatch.cc

      │

Backup Portal
      │
      ▼
unitelmatch.cyou
```

---

# Analytical Assessment

The investigation assesses with **high confidence** that these domains participated in the same recruiter-led onboarding workflow based on:

- Recruiter communications.
- Chronological introduction.
- Consistent operational purpose.
- Similar onboarding process.
- Technical similarities where available.

The investigation does not attribute ownership or control beyond these observed relationships.

---

# Future Collection

The following intelligence remains outstanding:

- Complete WHOIS analysis for unitelmatch.cc
- Complete WHOIS analysis for unitelmatch.cyou
- DNS records
- Passive DNS
- Certificate Transparency
- Technology stack
- Reputation analysis

These results should be incorporated into future versions of the repository as additional evidence becomes available.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-001-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-01.png), [EV-001-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-02.png), [EV-001-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-03.png), [EV-001-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-04.png) | Occupation Oasis job advertisement            |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png) | Chat              | Initial recruiter contact     | Collected |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png), [EV-002-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-02.png), [EV-002-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-03.png), [EV-002-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-04.png), [EV-002-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-05.png), [EV-002-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-06.png), [EV-002-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-07.png), [EV-002-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-08.png), [EV-002-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-09.png), [EV-002-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-10.png), [EV-002-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-11.png), [EV-002-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-12.png), [EV-002-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-13.png), [EV-002-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-14.png), [EV-002-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-15.png), [EV-002-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-16.png), [EV-002-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-17.png), [EV-002-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-18.png), [EV-002-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-19.png), [EV-002-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-20.png), [EV-002-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-21.png), [EV-002-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-22.png), [EV-002-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-23.png), [EV-002-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-24.png), [EV-002-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-25.png), [EV-002-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-26.png), [EV-002-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-27.png), [EV-002-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-28.png), [EV-002-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-29.png), [EV-002-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-30.png), [EV-002-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-31.png), [EV-002-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-32.png), [EV-002-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-33.png), [EV-002-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-34.png), [EV-002-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-35.png), [EV-002-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-36.png), [EV-002-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-37.png), [EV-002-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-38.png), [EV-002-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-39.png), [EV-002-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-40.png), [EV-002-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-41.png), [EV-002-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-42.png), [EV-002-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-43.png), [EV-002-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-44.png), [EV-002-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-45.png), [EV-002-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-46.png), [EV-002-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-47.png), [EV-002-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-48.png), [EV-002-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-49.png), [EV-002-50](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-50.png), [EV-002-51](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-51.png), [EV-002-52](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-52.png), [EV-002-53](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-53.png), [EV-002-54](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-54.png), [EV-002-55](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-55.png), [EV-002-56](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-56.png), [EV-002-57](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-57.png), [EV-002-58](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-58.png), [EV-002-59](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-59.png), [EV-002-60](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-60.png), [EV-002-61](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-61.png), [EV-002-62](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-62.png), [EV-002-63](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-63.png), [EV-002-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-64.png), [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png), [EV-002-66](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-66.png), [EV-002-67](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-67.png), [EV-002-68](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-68.png), [EV-002-69](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-69.png), [EV-002-70](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-70.png), [EV-002-71](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-71.png), [EV-002-72](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-72.png), [EV-002-73](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-73.png), [EV-002-74](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-74.png), [EV-002-75](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-75.png), [EV-002-76](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-76.png), [EV-002-77](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-77.png), [EV-002-78](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-78.png), [EV-002-79](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-79.png), [EV-002-80](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-80.png), [EV-002-81](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-81.png), [EV-002-82](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-82.png), [EV-002-83](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-83.png), [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png), [EV-002-85](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-85.png), [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png)      | Recruiter communication                       |
| [EV-009-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-009-01.png)      | linkroles.my registration URL                 |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) | Google Safe Browsing warning                  |
| [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png)     | Recruiter message introducing unitelmatch.top |
| [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png)      | Recruiter message introducing unitelmatch.cc |
| [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png)      | Recruiter message introducing unitelmatch.cyou |

---

# Confidence Assessment

**Confidence:** High

The findings are supported by:

- Recruiter communications
- Screenshots
- Browser observations
- URLs collected during the investigation

---

# Related Documents

- [Campaign_Overview.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Campaign_Overview.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     