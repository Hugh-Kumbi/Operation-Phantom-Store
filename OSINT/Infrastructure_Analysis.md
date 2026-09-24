# Infrastructure Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Updated

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
| [EV-016-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-01.png), [EV-016-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-02.png), [EV-016-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-03.png), [EV-016-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-04.png), [EV-016-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-05.png), [EV-016-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-06.png), [EV-016-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-016-07.png) | Domain Analysis – `occupationoasis.com`  |
| [EV-017-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-01.png), [EV-017-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-02.png), [EV-017-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-03.png), [EV-017-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-017-04.png) | Domain Analysis – `linkroles.my` |
| [EV-018-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-01.png), [EV-018-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-02.png), [EV-018-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-03.png), [EV-018-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-04.png) | Domain Analysis – `unitelmatch.top` |
| [EV-018-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-05.png), [EV-018-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-06.png), [EV-018-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-07.png), [EV-018-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-08.png), [EV-018-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-09.png), [EV-018-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-10.png) | Domain Analysis – `unitelmatch.cc` |
| [EV-018-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-11.png), [EV-018-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-12.png), [EV-018-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-13.png), [EV-018-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-14.png), [EV-018-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-15.png), [EV-018-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-16.png) | Domain Analysis – `unitelmatch.cyou` |
| [EV-018-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-17.png), [EV-018-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-18.png), [EV-018-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-19.png), [EV-018-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-20.png), [EV-018-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-21.png), [EV-018-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-018-22.png) | Domain Analysis – `ioutrankap.cyou` |
| [EV-019-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-019-01.png) | Certificate Transparency Logs – `occupationoasis.com` |
| [EV-020-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-020-01.png) | Certificate Transparency Logs – `linkroles.my` |
| [EV-021-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-01.png)  | Certificate Transparency Logs – `unitelmatch.top` |
| [EV-021-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-02.png)  | Certificate Transparency Logs – `unitelmatch.cc` |
| [EV-021-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-03.png), [EV-021-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-04.png), [EV-021-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-05.png) | Certificate Transparency Logs – unitelmatch.cyou |
| [EV-033-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-23.png) | Certificate Transparency Logs – `ioutrankap.cyou` |
| [EV-022-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-01.png), [EV-022-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-02.png), [EV-022-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-03.png), [EV-022-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-04.png) | WHOIS Records – `occupationoasis.com` |
| [EV-023-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-023-01.png), [EV-023-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-023-02.png) | WHOIS Records – `linkroles.my` |
| [EV-024-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-01.png), [EV-024-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-02.png), [EV-024-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-03.png) | WHOIS Records – `unitelmatch.top` |
| [EV-025-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-01.png), [EV-025-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-02.png), [EV-025-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-03.png), [EV-025-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-04.png), [EV-025-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-05.png), [EV-025-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-06.png) | WHOIS Records – `unitelmatch.cc` |
| [EV-025-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-07.png) [EV-025-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-08.png) [EV-025-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-09.png) | WHOIS Records – `unitelmatch.cyou` |
| [EV-025-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-10.png), [EV-025-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-11.png), [EV-025-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-12.png) | WHOIS Records – `ioutrankap.cyou` |
| [EV-026-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-01.png), [EV-026-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-02.png), [EV-026-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-03.png), [EV-026-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-04.png) | Reverse DNS Results – `occupationoasis.com` |
| [EV-026-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-05.png), [EV-026-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-06.png), [EV-026-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-07.png), [EV-026-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-08.png) | Reverse DNS Results – `linkroles.my` | 
| [EV-026-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-09.png), [EV-026-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-10.png), [EV-026-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-11.png), [EV-026-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-12.png) |Reverse DNS Results – `unitelmatch.top` | 
| [EV-026-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-13.png), [EV-026-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-14.png), [EV-026-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-15.png), [EV-026-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-16.png) | Reverse DNS Results – `unitelmatch.cc`  |
| [EV-026-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-17.png), [EV-026-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-18.png), [EV-026-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-19.png), [EV-026-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-20.png) | Reverse DNS Results – `unitelmatch.cyou` |
| [EV-026-21](http://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-21.png), [EV-026-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-22.png), [EV-026-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-23.png), [EV-026-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-24.png) | Reverse DNS Results – `ioutrankap.cyou` |
| [EV-027-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-01.png), [EV-027-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-02.png) | ASN and hosting provider information – `occupationoasis.com` |
| [EV-027-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-03.png), [EV-027-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-04.png) | ASN and hosting provider information – `linkroles.my` | 
| [EV-027-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-05.png) | ASN and hosting provider informationp – `unitelmatch.top` |
| [EV-027-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-06.png), [EV-027-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-07.png) | ASN and hosting provider information – `unitelmatch.cc` |
| [EV-027-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-08.png), [EV-027-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-09.png) | ASN and hosting provider information – `unitelmatch.cyou` |
| [EV-027-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-10.png), [EV-027-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-027-11.png) | ASN and hosting provider information – `unitelmatch.cyou` |
| [EV-028-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-01.png), [EV-028-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-02.png), [EV-028-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-03.png), [EV-028-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-04.png) | Technology stack analysis – `occupationoasis.com` |
| [EV-029-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-01.png), [EV-029-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-02.png), [EV-029-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-03.png) | Technology stack analysis – `linkroles.my` | Collected |
| [EV-030-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-01.png), [EV-030-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-02.png), [EV-030-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-03.png) | Website software and technology stack identification | Technology stack analysis – `unitelmatch.top`  |
| [EV-031-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-01.png), [EV-031-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-02.png), [EV-031-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-03.png) | Technology stack analysis – `unitelmatch.cc`  |
| [EV-031-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-04.png), [EV-031-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-05.png), [EV-031-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-06.png) |Technology stack analysis – `unitelmatch.cyou` |
| [EV-031-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-07.png), [EV-031-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-08.png), [EV-031-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-09.png), [EV-031-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-10.png) | Technology stack analysis – `ioutrankap.cyou` |
| [EV-033-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-01.png), [EV-033-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-02.png) | Censys Certificate Analysis – `occupationoasis.com` |
| [EV-033-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-03.png), [EV-033-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-04.png), [EV-033-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-05.png), [EV-033-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-06.png), [EV-033-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-07.png) | Censys Certificate Analysis – `linkroles.my` |
| [EV-033-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-08.png), [EV-033-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-09.png), [EV-033-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-10.png), [EV-033-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-11.png), [EV-033-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-12.png) | Censys Certificate Analysis – `unitelmatch.top` |
|  [EV-033-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-13.png) [EV-033-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-14.png),  [EV-033-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-15.png),  [EV-033-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-16.png), [EV-033-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-17.png) | Censys Certificate Analysis – `unitelmatch.cc` |
| [EV-033-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-18.png), [EV-033-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-19.png), [EV-033-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-20.png), [EV-033-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-21.png), [EV-033-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-22.png) | Censys Certificate Analysis – `unitelmatch.cyou` |
| [EV-033-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-24.png), [EV-033-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-25.png), [EV-033-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-26.png), [EV-033-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-27.png),  [EV-033-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-28.png),  [EV-033-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-29.png),  [EV-033-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-30.png),  [EV-033-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-31.png), [EV-033-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-32.png), [EV-033-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-33.png), [EV-033-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-34.png), [EV-033-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-35.png), [EV-033-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-36.png), [EV-033-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-37.png), [EV-033-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-38.png), [EV-033-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-39.png), [EV-033-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-40.png), [EV-033-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-41.png), [EV-033-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-42.png), [EV-033-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-43.png), [EV-033-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-44.png), [EV-033-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-45.png), [EV-033-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-46.png), [EV-033-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-47.png), [EV-033-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-48.png), [EV-033-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-49.png) | Censys Certificate Analysis – `ioutrankap.cyou` |
| [EV-053-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-053-11.png) | Application_Architecture.png |
| [EV-054-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-01.png), [EV-054-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-02.png), [EV-054-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-03.png), [EV-054-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-04.png), [EV-054-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-05.png) | AWS Route53 records – `occupationoasis.com` |
| [EV-055-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-055-01.png) | Browser Developer Tools – `occupationoasis.com`  |
| [EV-056-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-056-01.png) | Browser Developer Tools – `unitelmatch.top`      |
| [EV-057-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-057-01.png) | Browser Developer Tools – `unitelmatch.cyou`     |
| [EV-058-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-058-01.png) | Request headers – `unitelmatch.cyou` showing `merchant-id: 42` |
| [EV-059-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-01.png), [EV-059-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-02.png), [EV-059-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-03.png), [EV-059-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-059-04.png) | Request headers – `unitelmatch.top` |
| [EV-060-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-01.png), [EV-060-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-02.png), [EV-060-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-03.png), [EV-060-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-04.png), [EV-060-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-05.png) | API requests to `.ioutrankap.cyou` |

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

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 2.0 | 2026-09-21 | Added analysis for `unitelmatch.cc` and `unitelmatch.cyou`; documented the shared backend (`www.ioutrankap.cyou`); added infrastructure evolution timeline; added hosting provider comparison; expanded reverse DNS analysis; included application-layer infrastructure relationships; and distinguished recruitment infrastructure from operational infrastructure. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
