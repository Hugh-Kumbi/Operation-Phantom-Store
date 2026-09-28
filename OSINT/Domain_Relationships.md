# Domain Relationships

**Case ID:** OSINT-2026-001

**Investigation Title:** Cyber Threat Intelligence Investigation into a Multi-Domain Recruitment Fraud Campaign

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Final Intelligence Assessment

**Version:** 2.0

---

# Purpose

This document correlates the domains observed throughout Operation Phantom Store to determine whether they represent isolated websites or components of a coordinated infrastructure cluster. The analysis combines chronological evidence, infrastructure characteristics, backend architecture, application fingerprints, and operational behavior to identify recurring patterns across the campaign.

The purpose is **not** to attribute ownership, but to demonstrate evidence-based infrastructure correlation suitable for cyber threat intelligence reporting.

---

# Campaign Infrastructure Inventory

| Domain | Role During Investigation | Status |
|--------|---------------------------|--------|
| occupationoasis.com | Initial recruitment platform  | Observed                       |
| linkroles.my        | Initial onboarding portal     | Replaced                       |
| unitelmatch.top     | Replacement onboarding portal | Replaced                       |
| unitelmatch.cc      | Subsequent onboarding portal  | Replaced after browser warning |
| unitelmatch.cyou    | Backup onboarding portal      | Active during investigation    |

---

# Campaign Domain Progression

The recruiter introduced multiple portals throughout the onboarding process.

```text
Recruitment Advertisement
occupationoasis.com
        │
        ▼
Initial Onboarding
linkroles.my
        │
 Google Safe Browsing Warning
        │
        ▼
Replacement Portal
unitelmatch.top
        │
 Google Safe Browsing Warning
        │
        ▼
Infrastructure Rotation
unitelmatch.cc
        │
 Google Safe Browsing Warning
        │
        ▼
Fallback Portal
unitelmatch.cyou
```

Each transition occurred during active communication with the recruiter.

---

# Operational Roles

## occupationoasis.com

Observed as the initial recruitment website.

Purpose:

- Job advertisement
- Initial recruiter contact
- Candidate acquisition

No onboarding activities were performed directly through this domain.

---

## linkroles.my

Observed as the first operational platform.

Purpose:

- User registration
- Store creation
- Initial onboarding
- Guided training

Later replaced during the investigation.

---

## unitelmatch.top

Observed as the replacement onboarding platform.

Purpose:

- Continued onboarding
- Store management
- Training
- Platform access

The investigator observed cryptocurrency-related activity while using this portal.

---

## unitelmatch.cc

Observed as a subsequent onboarding platform introduced by the recruiter.

Purpose:

- Continued access to the platform
- Ongoing onboarding

The investigator observed a Google Safe Browsing warning when attempting to access the site.

The recruiter subsequently supplied another portal.

---

## unitelmatch.cyou

Observed as a backup onboarding portal.

Purpose:

- Continued access after browser warning
- Replacement platform
- Ongoing training

The recruiter instructed the investigator to continue using this domain while the reported issue with the previous portal was being investigated.

---

# Timeline of Domain Introduction

| Approximate Order | Domain | How Introduced |
|-------------------|--------|----------------|
| 1 | occupationoasis.com | Public job advertisement                                   |
| 2 | linkroles.my        | Recruiter onboarding instructions                          |
| 3 | unitelmatch.top     | Replacement after browser warning                          |
| 4 | unitelmatch.cc      | Recruiter introduced upgraded portal                       |
| 5 | unitelmatch.cyou    | Recruiter supplied backup portal following browser warning |

---

# Infrastructure Comparison

| Domain | Hosting / CDN | Registrar | Certificate | Notes |
|--------|---------------|-----------|-------------|-------|
| occupationoasis.com | AWS / CloudFront | Amazon Registrar     | AWS Certificate Manager               | Nuxt.js, Vue.js           |
| linkroles.my        | Cloudflare       | Gname.com            | Google Trust Services / Cloudflare    | Vue.js                    |
| unitelmatch.top     | Cloudflare       | Global Asset Domains | Google Trust Services / Let's Encrypt | Vue.js                    |
| unitelmatch.cc      | Cloudflare       | Dynadot Inc          | Google Trust Services /  SSL.com      | Vue.js                    |
| unitelmatch.cyou    | Cloudflare       | Global Asset Domains | SSL.com / Google Trust Services       | Nuxt.js, Vue.js           |

## Infrastructure Correlation Matrix

| Indicator                 | OccupationOasis | LinkRoles | UnitelMatch.top | UnitelMatch.cc | UnitelMatch.cyou |
| ------------------------- | --------------- | --------- | --------------- | -------------- | ---------------- |
| Vue.js                    | ✓               | ✓         | ✓              | ✓              | ✓                |
| Cloudflare                | ✗               | ✓         | ✓              | ✓              | ✓                |
| Google Trust Services TLS | ✗               | ✓         | ✓              | ✓              | ✓                |
| Backend API               | ✗               | Unknown   | Shared          | Shared         | Shared           |
| Merchant-ID 42            | ✗               | Unknown   | ✓               | ✓              | ✓                |
| API Path `/tiny-shop/v1/` | ✗               | Unknown   | ✓               | ✓              | ✓                |
| Cloudflare Name Servers   | ✗               | ✓         | ✓               | ✓              | ✓                |
| Infrastructure Rotation   | —               | ✓         | ✓               | ✓              | ✓                |


---

# Shared Characteristics

The investigation identified several recurring characteristics across the observed infrastructure. These are grouped into infrastructure, application, and operational layers.

## Infrastructure

- Cloudflare proxy
- Shared name servers
- Shared CDN (Amazon CloudFront)
- HTTP/3
- QUIC
- Browser Insights
- Observed providers also included Amazon Web Services and Cloudflare

These services are commonly used by legitimate organizations as well as malicious actors. Their presence alone is not evidence of malicious activity.

---

## Application

- Vue.js SPA (single-page application)
- Nuxt.js
- Similar JavaScript bundles
- Identical API structure
- Same merchant-id: 42
- Shared backend endpoint
- Same routing pattern
- Google Tag Manager
- Google Analytics
- TLS 1.3

---

## Operational

- Recruiter-led migration
- Progressive onboarding
- Replacement after browser warnings
- Cryptocurrency workflow
- Same training methodology
- Consistent social engineering

---

## Recently Registered Domains

Several onboarding portals were newly registered shortly before their use.

This observation is documented in the WHOIS analysis.

---

## Valid SSL Certificates

Observed certificate authorities included:

- Google Trust Services
- AWS Certificate Manager
- Let's Encrypt

The presence of valid certificates demonstrates encrypted communications but does not indicate the legitimacy of the platform.

---

## Domain Rotation

The investigation documented repeated migration between onboarding portals.

Observed sequence:

```text
linkroles.my

↓

unitelmatch.top

↓

unitelmatch.cc

↓

unitelmatch.cyou
```

Each transition was initiated by the recruiter.

---

# Behavioral Relationships

Observed recruiter behavior remained consistent despite domain changes.

Common patterns included:

- Guided onboarding
- Scheduled training
- Store registration
- Progressive trust building
- Immediate provision of replacement portals
- Continued communication following browser security warnings

These behaviors remained stable across all observed domains.

---

# Analytical Assessment

Multiple independent technical and behavioral indicators support the assessment that the observed domains formed part of a coordinated infrastructure cluster supporting a single recruitment workflow. Evidence includes repeated infrastructure rotation, shared frontend architecture, common backend API design, recurring application fingerprints, identical merchant identifiers, and consistent recruiter-driven migration between domains.

While definitive attribution to a specific threat actor is outside the scope of this investigation, the cumulative evidence strongly supports the conclusion that these domains were operationally related and served interchangeable roles within the same campaign.

---

# Remaining Intelligence Gaps

- Historical Passive DNS prior to campaign discovery
- Registrar account reuse across related domains
- Shared hosting origin behind Cloudflare
- Historical TLS certificate reuse
- Additional infrastructure linked to ioutrankap.cyou
- Cryptocurrency wallet attribution
- Victim reporting from additional regions

---

# Confidence Assessment

| Assessment                                                | Confidence  |
| --------------------------------------------------------- | ----------- |
| Domains participated in the same recruitment workflow     | High        |
| Infrastructure rotation occurred during active onboarding | High        |
| Shared frontend architecture across replacement domains   | High        |
| Shared backend API infrastructure                         | High        |
| Common operational management is likely                   | Medium–High |
| Attribution to a specific threat actor                    | Low         |

---

# Intelligence Value

This document supports:

- Infrastructure clustering
- IOC enrichment
- Threat hunting
- Detection engineering
- Campaign tracking
- SOC investigations
- Future infrastructure correlation
- Intelligence sharing (STIX/MISP)

---

# Related Documents

- [Application_Architecture.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Application_Architecture.md)
- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Campaign_Overview.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Campaign_Overview.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Confidence_Assessment.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Detection/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection)
- [IOCs/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/IOCs)
- [MISP/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/MISP)
- [STIX/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/STIX)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Executive_Report.pdf](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Executive_Report.pdf)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Operation_Phantom_Store_Presentation](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Operation_Phantom_Store_Presentation)
- [MITRE_ATTACK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 1.0 | 2026-08-03 | Initial document created to document observed relationships between campaign domains. |
| 1.1 | 2026-08-15 | Added `unitelmatch.cc` and `unitelmatch.cyou`, expanded domain progression, infrastructure comparison, and confidence assessment. |
| 2.0 | 2026-09-28 | Expanded from a domain relationship summary into a comprehensive infrastructure correlation assessment. Added campaign infrastructure inventory, infrastructure correlation matrix, shared application fingerprints, backend architecture relationships, updated confidence assessment, revised intelligence gaps, enhanced analytical assessment, and aligned terminology with the completed Operation Phantom Store CTI investigation. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store 