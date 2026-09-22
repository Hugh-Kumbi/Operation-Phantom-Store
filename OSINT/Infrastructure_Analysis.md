# Infrastructure Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Active Investigation

**Version:** 2.0

---

# Objective

This document analyses the technical infrastructure supporting the domains identified during the investigation. The objective is to examine domain registration, hosting providers, content delivery networks (CDNs), reverse DNS information, infrastructure evolution, and architectural relationships between the observed domains.

The analysis is based on publicly available OSINT and passive reconnaissance only.

---

# Domains Analysed

| Domain | Observed Role |
|--------|---------------|
| occupationoasis.com | Initial recruitment website |
| linkroles.my        | First operational portal    |
| unitelmatch.top     | Second operational portal   |
| unitelmatch.cc      | Third operational portal    |
| unitelmatch.cyou    | Backup operational portal   |
| www.ioutrankap.cyou | Shared backend API          |

---

# Infrastructure Evolution

The investigation identified a clear evolution in the campaign infrastructure.

```text
Recruitment Phase

occupationoasis.com
        │
        ▼
Amazon AWS Infrastructure
(Route53 + CloudFront)

────────────────────────────────────

Operational Phase

linkroles.my
        │
        ▼
unitelmatch.top
        │
        ▼
unitelmatch.cc
        │
        ▼
unitelmatch.cyou
        │
        ▼
Cloudflare Infrastructure
        │
        ▼
Shared Backend

www.ioutrankap.cyou
```

The initial recruitment website operated independently using Amazon Web Services. During the operational phase, multiple onboarding portals were introduced, all adopting a common Cloudflare-based architecture while communicating with the same backend API.

---

# Domain Registration Comparison

| Domain | Creation Date | Registrar | Privacy Protection |
|--------|---------------|-----------|--------------------|
| occupationoasis.com | 2026-06-29            | Amazon Registrar          | Enabled               |
| linkroles.my        | 2026-07-19            | Gname.com                 | Full WHOIS Redaction  |
| unitelmatch.top     | 2026-07-23            | Global Asset Domains Inc. | Full WHOIS Redaction  |
| unitelmatch.cc      | 2026-07-23            | Dynadot LLC               | Super Privacy Service |
| unitelmatch.cyou    | 2026-07-24 (observed) | Global Asset Domains Inc. | Full WHOIS Redaction  |

---

# Registration Timeline

```text
29 Jun 2026

occupationoasis.com

↓

19 Jul 2026

linkroles.my

↓

23 Jul 2026

unitelmatch.top

↓

23 Jul 2026

unitelmatch.cc

↓

24 Jul 2026

unitelmatch.cyou
```

The observed registration sequence demonstrates rapid deployment of operational portals over approximately one week.

---

# Hosting Providers

## Recruitment Website

occupationoasis.com

Hosting:

- Amazon Web Services
- Amazon CloudFront
- Amazon S3
- Amazon Route53

ASN

AS16509

---

## Operational Infrastructure

linkroles.my

unitelmatch.top

unitelmatch.cc

unitelmatch.cyou

Hosting:

- Cloudflare CDN
- Cloudflare Reverse Proxy
- Cloudflare WAF
- Cloudflare DNS

ASN

AS13335

The operational portals consistently utilised Cloudflare services to proxy origin infrastructure.

---

# Backend Infrastructure

One of the most significant findings was the identification of a shared backend application.

Backend Domain

www.ioutrankap.cyou

Observed communicating with:

- linkroles.my
- unitelmatch.top
- unitelmatch.cc

The same backend architecture is inferred for unitelmatch.cyou based on identical application behaviour and request patterns.

Observed API structure:

```
/tiny-shop/v1/

GET /site/config

GET /member/member/index

GET /shop/product/my-product

GET /index/index
```

Observed request header:

```
merchant-id: 42
```

This shared backend provides strong technical evidence that the operational portals utilise the same application infrastructure.

---

# Reverse DNS

## occupationoasis.com

CloudFront edge nodes resolved to:

- server-18-239-36-15.ams58.r.cloudfront.net
- server-18-239-36-62.ams58.r.cloudfront.net
- server-18-239-36-99.ams58.r.cloudfront.net

These results are consistent with Amazon CloudFront.

---

## Cloudflare Infrastructure

Reverse DNS for the operational portals primarily resolved to shared Cloudflare infrastructure.

Examples:

- alina.ns.cloudflare.com
- Cloudflare shared IP ranges
- Shared IPv6 infrastructure

The true origin servers remain concealed behind Cloudflare.

---

# Infrastructure Comparison

| Feature | OccupationOasis | LinkRoles | UnitelMatch.top | UnitelMatch.cc | UnitelMatch.cyou |
|---------|-----------------|-----------|-----------------|----------------|------------------|
| Amazon Infrastructure | ✓ | ✗ | ✗ | ✗ | ✗        |
| Cloudflare CDN        | ✗ | ✓ | ✓ | ✓ | ✓        |
| Cloudflare WAF        | ✗ | ✓ | ✓ | ✓ | ✓        |
| Shared Backend        | ✗ | ✓ | ✓ | ✓ | Inferred |
| Vue.js SPA            | ✓ | ✓ | ✓ | ✓ | ✓        |
| HTTP/3                | ✗ | ✓ | ✓ | ✓ | ✓        |
| Shared Merchant ID    | ✗ | ✓ | ✓ | ✓ | Inferred |

---

# Infrastructure Relationships

```text
Recruitment Website

occupationoasis.com

        │

Recruiter Contact

        │

────────────────────────────────────

Operational Portals

linkroles.my

        │

unitelmatch.top

        │

unitelmatch.cc

        │

unitelmatch.cyou

        │

────────────────────────────────────

Shared Backend

www.ioutrankap.cyou

        │

tiny-shop/v1/

merchant-id: 42
```

---

# Analytical Assessment

The investigation identified two distinct infrastructure groups.

### Recruitment Infrastructure

The recruitment website utilised Amazon Web Services, including Route53 and CloudFront, and functioned independently from the later operational portals.

### Operational Infrastructure

The operational portals demonstrated a consistent technical architecture characterised by:

- Cloudflare DNS
- Cloudflare CDN
- Cloudflare WAF
- Vue.js single-page applications
- Shared backend API
- Common API request patterns
- Shared merchant identifier (`merchant-id: 42`)

These similarities strongly support the conclusion that the portals formed part of the same observed application ecosystem.

The investigation documents these technical relationships as observed evidence. While they support infrastructure correlation, they do not independently establish ownership or attribution.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-016-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-01.png), [EV-016-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-02.png), [EV-016-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-03.png), [EV-016-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-04.png), [EV-016-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-05.png), [EV-016-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-06.png), [EV-016-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-07.png) | DNS lookup – occupationoasis.com |
| [EV-017-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-01.png), [EV-017-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-02.png), [EV-017-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-03.png), [EV-017-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-04.png) | DNS lookup – linkroles.my        |
| [EV-018-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-01.png), [EV-018-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-02.png), [EV-018-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-03.png), [EV-018-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-04.png) | DNS lookup – unitelmatch.top     |
| [EV-018-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-05.png), [EV-018-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-06.png), [EV-018-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-07.png), [EV-018-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-08.png), [EV-018-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-09.png), [EV-018-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-10.png) | DNS lookup – unitelmatch.cc |
| [EV-018-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-11.png), [EV-018-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-12.png), [EV-018-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-13.png), [EV-018-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-14.png), [EV-018-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-15.png), [EV-018-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-16.png)  | DNS lookup – unitelmatch.cyou |
| [EV-022-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-01.png), [EV-022-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-02.png), [EV-022-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-03.png), [EV-022-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-04.png) | WHOIS records – occupationoasis.com  |
| [EV-023-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-023-01.png), [EV-023-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-023-02.png) | WHOIS records – linkroles.my         |
| [EV-024-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-01.png), [EV-024-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-02.png), [EV-024-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-03.png) | WHOIS records – unitelmatch.top      |
| [EV-025-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-01.png), [EV-025-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-02.png), [EV-025-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-03.png), [EV-025-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-04.png), [EV-025-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-05.png), [EV-025-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-06.png), | WHOIS records – unitelmatch.cc |
| [EV-025-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-07.png) [EV-025-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-08.png) [EV-025-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-09.png) | WHOIS records – unitelmatch.cyou |
| [EV-026-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-01.png), [EV-026-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-02.png), [EV-026-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-03.png), [EV-026-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-04.png) | Reverse DNS lookup – occupationoasis.com     |
| [EV-026-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-05.png), [EV-026-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-06.png), [EV-026-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-07.png), [EV-026-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-08.png) | Reverse DNS lookup – linkroles.my            |
| [EV-026-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-09.png), [EV-026-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-10.png), [EV-026-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-11.png), [EV-026-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-12.png) | Reverse DNS lookup – unitelmatch.top         |
| [EV-026-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-13.png), [EV-026-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-14.png), [EV-026-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-15.png), [EV-026-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-16.png) | Reverse DNS lookup – unitelmatch.cc          |
| [EV-026-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-17.png), [EV-026-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-18.png), [EV-026-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-19.png), [EV-026-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-20.png) | Reverse DNS lookup – unitelmatch.cyou        |
| [EV-027-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-01.png), [EV-027-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-02.png), [EV-027-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-03.png), [EV-027-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-04.png), [EV-027-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-05.png), [EV-027-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-06.png), [EV-027-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-07.png), [EV-027-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-08.png), [EV-027-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-09.png) | ASN and hosting provider information |
| [EV-028-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-01.png), [EV-028-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-02.png), [EV-028-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-03.png), [EV-028-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-04.png) | ... ... ... ... ... ... ... ... ...  | Technology stack analysis | Collected |
| [EV-029-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-01.png), [EV-029-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-02.png), [EV-029-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-03.png) | ... ... ... ... ... ... ... ... ...  | Technology stack analysis | Collected |
| [EV-030-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-01.png), [EV-030-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-02.png), [EV-030-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-03.png) | ... ... ... ... ... ... ... ... ...  | Technology stack analysis | Collected |
| [EV-031-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-01.png), [EV-031-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-02.png), [EV-031-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-03.png), [EV-031-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-04.png), [EV-031-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-05.png), [EV-031-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-06.png) | ... ... ... ... ... ... ... ... ...  | Technology stack analysis | Collected |
| [EV-033-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-01.png), [EV-033-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-02.png) | Cloudflare web property observations – occupationoasis.com |
| [EV-033-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-03.png), [EV-033-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-04.png), [EV-033-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-05.png), [EV-033-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-06.png), [EV-033-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-07.png)  | Cloudflare web property observations – linkroles.my        |
| [EV-033-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-08.png), [EV-033-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-09.png), [EV-033-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-10.png), [EV-033-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-11.png), [EV-033-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-12.png)  | Cloudflare web property observations – unitelmatch.top     |
| [EV-033-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-13.png), [EV-033-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-14.png), [EV-033-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-15.png), [EV-033-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-16.png), [EV-033-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-17.png)  | Cloudflare web property observations – unitelmatch.cc      |
| [EV-033-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-18.png), [EV-033-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-19.png), [EV-033-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-20.png), [EV-033-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-21.png), [EV-033-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-22.png)  | Cloudflare web property observations – unitelmatch.cyou    |
| [EV-055-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-055-01.png) | Browser Developer Tools (Network tab) – occupationoasis.com  |
| [EV-056-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-056-01.png) | Browser Developer Tools (Network tab) – unitelmatch.top      |
| [EV-057-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-057-01.png) | Browser Developer Tools (Network tab) – unitelmatch.cyou     |
| [EV-058-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-058-01.png) | Request headers – unitelmatch.cyou showing `merchant-id: 42` |
| [EV-059-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-01.png), [EV-059-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-02.png), [EV-059-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-03.png), [EV-059-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-04.png) | Request headers – unitelmatch.top                      |
| [EV-060-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-01.png), [EV-060-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-02.png), [EV-060-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-03.png), [EV-060-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-04.png), [EV-060-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-05.png) | API requests to `www.ioutrankap.cyou`   |

---

# Related Documents

- [Application_Architecture.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Application_Architecture.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)

---

# Change log
| Version | Date | Change |
|---------|------|--------|
| 2.0 | 2026-09-21 | Added analysis for `unitelmatch.cc` and `unitelmatch.cyou`; documented the shared backend (`www.ioutrankap.cyou`); added infrastructure evolution timeline; added hosting provider comparison; expanded reverse DNS analysis; included application-layer infrastructure relationships; and distinguished recruitment infrastructure from operational infrastructure. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
