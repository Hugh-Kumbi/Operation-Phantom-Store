# Indicators of Compromise (IOCs)

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Active Investigation

**Version:** 1.2

---

# Objective

This document consolidates the technical and behavioural indicators identified throughout the investigation. These Indicators of Compromise (IoCs) are intended to assist security teams in detecting, investigating, and monitoring similar activity.

The indicators documented here are derived from passive OSINT, network analysis, browser observations, Certificate Transparency logs, DNS records, and observed application behaviour.

---

# Campaign Summary

Observed campaign infrastructure consisted of:

## Recruitment Website

- occupationoasis.com

## Operational Portals

- linkroles.my
- unitelmatch.top
- unitelmatch.cc
- unitelmatch.cyou

## Shared Backend

- www.ioutrankap.cyou

---

# Domain Indicators

| Domain | Observed Role | Confidence |
|--------|---------------|------------|
| occupationoasis.com | Recruitment website       | Medium |
| linkroles.my        | Operational portal        | High   |
| unitelmatch.top     | Operational portal        | High   |
| unitelmatch.cc      | Operational portal        | High   |
| unitelmatch.cyou    | Backup operational portal | High   |
| www.ioutrankap.cyou | Shared backend API        | High   |

---

# IP Address Indicators

## OccupationOasis

Amazon CloudFront

```
18.239.36.15
18.239.36.62
18.239.36.99
18.239.36.77
65.8.180.42
65.8.180.52
65.8.180.92
65.8.180.104
```

---

## LinkRoles

Cloudflare

```
172.67.174.52
104.21.30.243
188.114.96.0
188.114.97.0
```

IPv6

```
2a06:98c1:3120::0
2a06:98c1:3121::0
```

---

## UnitelMatch.top

Cloudflare

```
172.67.206.231
104.21.22.200
188.114.96.0
188.114.97.0
```

IPv6

```
2a06:98c1:3120::0
2a06:98c1:3121::0
```

---

## UnitelMatch.cc

Cloudflare

```
172.67.171.54
104.21.29.4
188.114.96.0
188.114.97.0
```

IPv6

```
2a06:98c1:3120::0
2a06:98c1:3121::0
```

---

## UnitelMatch.cyou

Cloudflare

```
172.67.211.59
104.21.45.78
172.67.154.35
```

IPv6

```
2606:4700:3030::ac43:d33b
2606:4700:3033::6815:2d4e
```

---

# DNS Indicators

Shared Cloudflare Name Servers

```
alina.ns.cloudflare.com
bob.ns.cloudflare.com
```

AWS Route53

```
ns-149.awsdns-18.com
ns-865.awsdns-44.net
ns-1883.awsdns-43.co.uk
ns-1422.awsdns-49.org
```

---

# Backend Indicators

Observed Backend

```
www.ioutrankap.cyou
```

Observed API Base

```
/tiny-shop/v1/
```

Observed API Endpoints

```
GET /site/config

GET /member/member/index

GET /shop/product/my-product

GET /index/index
```

Observed HTTP Method

```
OPTIONS
GET
POST
```

---

# HTTP Indicators

Observed Header

```
merchant-id: 42
```

Observed Header

```
x-api-key:
```

Observed Response Header

```
access-control-allow-origin: *
```

Observed Protocols

```
HTTP/3

QUIC

TLS 1.3
```

---

# Certificate Indicators

Google Trust Services

```
WE1

WR1
```

Amazon

```
Amazon RSA 2048 M01
```

Certificate fingerprints collected during the investigation were retained in the evidence register.

---

# Application Indicators

Frameworks

```
Vue.js

Nuxt.js
```

JavaScript

```
core-js

lodash
```

Cloudflare

```
Cloudflare Browser Insights

Cloudflare CDN

Cloudflare WAF
```

Analytics

```
Google Tag Manager

Google Analytics
```

---

# Behavioural Indicators

Observed characteristics included:

- Newly registered domains.
- Cloudflare reverse proxy.
- Full WHOIS privacy.
- No MX records.
- No TXT records.
- Short certificate validity.
- Short DNS TTL values.
- Browser security warnings.
- Rapid domain replacement.
- Shared backend API.
- Shared merchant identifier.
- Multiple operational portals.
- Consistent Vue.js application architecture.

---

# Infrastructure Relationships

```text
occupationoasis.com

        │

Recruitment

        ▼

linkroles.my

        │

unitelmatch.top

        │

unitelmatch.cc

        │

unitelmatch.cyou

        │

        ▼

www.ioutrankap.cyou
```

---

# Detection Opportunities

Potential detection logic may include:

## DNS

- Newly registered domains.
- Cloudflare DNS.
- No MX records.
- No TXT records.

---

## Network

- Connections to:

```
www.ioutrankap.cyou
```

---

## HTTP

Requests containing:

```
merchant-id: 42
```

Requests to:

```
/tiny-shop/v1/
```

---

## Browser

Connections exhibiting:

- Vue.js SPA
- Cloudflare Browser Insights
- Cloudflare CDN
- HTTP/3
- QUIC

---

# Confidence Assessment

| Indicator | Confidence |
|-----------|------------|
| Shared Backend            | High         |
| Shared API Structure      | High         |
| merchant-id: 42           | High         |
| Cloudflare Infrastructure | High         |
| Certificate Similarity    | High         |
| Shared DNS                | High         |
| Domain Rotation           | High         |
| Shared Ownership          | Not Assessed |

The investigation documents observed technical similarities. These indicators support infrastructure correlation but do not independently establish ownership or attribution.

---

# CHANGELOG

## Version 1.2

- Added IoCs for `unitelmatch.cc`.
- Added IoCs for `unitelmatch.cyou`.
- Added shared backend indicators (`www.ioutrankap.cyou`).
- Added API endpoint indicators.
- Added HTTP header indicators.
- Expanded network and behavioural indicators.
- Updated campaign infrastructure relationships.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-032-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-01.png), [EV-032-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-02.png), [EV-032-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-03.png), [EV-032-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-04.png), [EV-032-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-05.png), [EV-032-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-06.png), [EV-032-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-07.png), [EV-032-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-08.png), [EV-032-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-09.png), [EV-032-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-10.png), [EV-032-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-11.png), [EV-032-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-12.png), [EV-032-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-13.png), [EV-032-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-14.png), [EV-032-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-15.png), [EV-032-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-16.png) [EV-032-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-17.png) [EV-032-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-18.png), [EV-032-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-19.png) | DNS analysis                 |
| [EV-022-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-01.png), [EV-022-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-02.png), [EV-022-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-03.png), [EV-022-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-022-04.png), [EV-023-01](https://github.com/Hugh-Kumbi/OSINT-Investigation-Analysis-of-a-Suspected-Remote-Recruitment-Platform/blob/main/Evidence/Screenshots/EV-023-01.png), [EV-023-02](https://github.com/Hugh-Kumbi/OSINT-Investigation-Analysis-of-a-Suspected-Remote-Recruitment-Platform/blob/main/Evidence/Screenshots/EV-023-02.png), [EV-024-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-01.png), [EV-024-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-02.png), [EV-024-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-024-03.png), [EV-025-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-01.png), [EV-025-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-02.png), [EV-025-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-03.png), [EV-025-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-04.png), [EV-025-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-05.png), [EV-025-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-06.png), [EV-025-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-07.png), [EV-025-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-08.png), [EV-025-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-025-09.png) | WHOIS records                |
| [EV-019-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-019-01.png), [EV-020-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-020-01.png), [EV-021-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-01.png), [EV-021-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-02.png), [EV-021-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-03.png), [EV-021-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-04.png), [EV-021-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-021-05.png) | Certificate analysis         |
| [EV-043-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-01.png), [EV-043-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-02.png), [EV-043-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-03.png), [EV-043-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-04.png), [EV-043-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-05.png), [EV-043-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-06.png), [EV-043-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-07.png), [EV-043-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-08.png), [EV-043-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-09.png), [EV-043-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-10.png), [EV-043-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-11.png), [EV-043-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-12.png), [EV-043-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-13.png), [EV-043-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-14.png), [EV-043-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-15.png), [EV-043-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-16.png), [EV-043-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-17.png), [EV-043-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-18.png), [EV-043-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-19.png), [EV-043-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-20.png), [EV-043-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-21.png), [EV-043-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-22.png), [EV-043-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-23.png), [EV-043-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-24.png), [EV-043-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-251.png), [EV-043-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-26.png), [EV-043-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-27.png), [EV-043-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-28.png), [EV-043-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-29.png), [EV-043-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-30.png), [EV-043-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-31.png), [EV-043-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-32.png), [EV-043-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-33.png), [EV-043-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-34.png), [EV-043-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-35.png), [EV-043-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-36.png), [EV-043-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-37.png), [EV-043-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-38.png), [EV-043-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-39.png), [EV-043-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-40.png), [EV-043-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-043-41.png) | Infrastructure analysis      |
| [EV-028-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-01.png), [EV-028-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-02.png), [EV-028-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-03.png), [EV-028-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-04.png), [EV-029-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-01.png), [EV-029-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-02.png), [EV-029-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-03.png), [EV-030-01](https://github.com/Hugh-Kumbi/OSINT-Investigation-Analysis-of-a-Suspected-Remote-Recruitment-Platform/blob/main/Evidence/Screenshots/EV-030-01.png), [EV-030-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-01.png), [EV-030-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-02.png), [EV-030-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-03.png) | Technology stack analysis    |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png), [EV-002-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-02.png), [EV-002-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-03.png), [EV-002-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-04.png), [EV-002-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-05.png), [EV-002-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-06.png), [EV-002-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-07.png), [EV-002-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-08.png), [EV-002-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-09.png), [EV-002-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-10.png), [EV-002-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-11.png), [EV-002-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-12.png), [EV-002-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-13.png), [EV-002-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-14.png), [EV-002-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-15.png), [EV-002-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-16.png), [EV-002-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-17.png), [EV-002-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-18.png), [EV-002-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-19.png), [EV-002-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-20.png), [EV-002-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-21.png), [EV-002-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-22.png), [EV-002-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-23.png), [EV-002-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-24.png), [EV-002-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-25.png), [EV-002-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-26.png), [EV-002-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-27.png), [EV-002-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-28.png), [EV-002-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-29.png), [EV-002-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-30.png), [EV-002-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-31.png), [EV-002-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-32.png), [EV-002-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-33.png), [EV-002-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-34.png), [EV-002-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-35.png), [EV-002-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-36.png), [EV-002-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-37.png), [EV-002-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-38.png), [EV-002-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-39.png), [EV-002-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-40.png), [EV-002-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-41.png), [EV-002-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-42.png), [EV-002-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-43.png), [EV-002-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-44.png), [EV-002-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-45.png), [EV-002-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-46.png), [EV-002-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-47.png), [EV-002-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-48.png), [EV-002-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-49.png), [EV-002-50](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-50.png), [EV-002-51](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-51.png), [EV-002-52](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-52.png), [EV-002-53](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-53.png), [EV-002-54](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-54.png), [EV-002-55](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-55.png), [EV-002-56](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-56.png), [EV-002-57](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-57.png), [EV-002-58](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-58.png), [EV-002-59](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-59.png), [EV-002-60](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-60.png), [EV-002-61](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-61.png), [EV-002-62](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-62.png), [EV-002-63](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-63.png), [EV-002-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-64.png), [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png), [EV-002-66](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-66.png), [EV-002-67](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-67.png), [EV-002-68](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-68.png), [EV-002-69](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-69.png), [EV-002-70](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-70.png), [EV-002-71](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-71.png), [EV-002-72](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-72.png), [EV-002-73](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-73.png), [EV-002-74](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-74.png), [EV-002-75](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-75.png), [EV-002-76](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-76.png), [EV-002-77](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-77.png), [EV-002-78](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-78.png), [EV-002-79](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-79.png), [EV-002-80](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-80.png), [EV-002-81](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-81.png), [EV-002-82](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-82.png), [EV-002-83](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-83.png), [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png), [EV-002-85](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-85.png), [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png) | Recruiter communications     |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png), [EV-012-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-04.png) | Browser warning observations |
| [EV-045-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-045-01.png) |  Recruiter providing `unitelmatch.cc`  |
| [EV-46-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-046-01.png) | Browser warning – `unitelmatch.cc`  |
| [EV-047-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-047-01.png) |  Analyst reporting the Google warning.  |
| [EV-48-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-048-01.png) | Recruiter explaining that they would contact the IT team  |
| [EV-49-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png) | Recruiter providing `unitelmatch.cyou`  |
| [EV-50-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-050-01.png) |Recruiter checking if analyst has logged in."  |
| [EV-51-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png) | Recruiter explaining that the warning was due to a "platform upgrade."  |
| [EV-055-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-055-01.png) | Browser Developer Tools (Network tab) – occupationoasis.com  |
| [EV-056-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-056-01.png) | Browser Developer Tools (Network tab) – unitelmatch.top      |
| [EV-057-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-057-01.png) | Browser Developer Tools (Network tab) – unitelmatch.cyou     |
| [EV-058-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-058-01.png) | Request headers – unitelmatch.cyou showing `merchant-id: 42` |
| [EV-060-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-01.png), [EV-060-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-02.png), [EV-060-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-03.png), [EV-060-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-04.png), [EV-060-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-060-05.png) API requests to `www.ioutrankap.cyou` |
| [EV-066-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-01.png), [EV-066-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-02.png), [EV-066-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-03.png), [EV-066-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-066-04.png) |  VirusTotal Detection results & history – occupationoasis  |
| [EV-067-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-01.png), [EV-067-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-02.png), [EV-067-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-03.png), [EV-067-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-067-04.png) |  VirusTotal Detection results & history – linkroles  |
| [EV-068-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-01.png), [EV-068-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-02.png), [EV-068-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-03.png), [EV-068-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-068-04.png) |  VirusTotal Detection results & history – unitelmatch.top  |
| [EV-069-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-01.png), [EV-069-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-02.png), [EV-069-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-03.png), [EV-069-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-069-04.png) |  VirusTotal Detection results & history – unitelmatch.cc  |
| [EV-070-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-01.png), [EV-070-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-02.png), [EV-070-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-03.png), [EV-070-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-070-04.png) |  VirusTotal Detection results & history – unitelmatch.cyou  |
[EV-071-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-01.png), [EV-071-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-02.png), [EV-071-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-03.png), [EV-071-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-04.png), [EV-071-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-05.png), [EV-071-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-06.png), [EV-071-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-071-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – occupationoasis  |
| [EV-072-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-01.png), [EV-072-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-02.png), [EV-072-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-03.png), [EV-072-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-04.png), [EV-072-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-05.png), [EV-072-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-06.png), [EV-072-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-072-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – linkroles  |
| [EV-073-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-01.png), [EV-073-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-02.png), [EV-073-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-03.png), [EV-073-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-04.png), [EV-073-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-05.png), [EV-073-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-06.png), [EV-073-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-073-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.top  |
| [EV-074-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-01.png), [EV-074-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-02.png), [EV-074-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-03.png), [EV-074-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-04.png), [EV-074-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-05.png), [EV-074-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-06.png), [EV-074-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-074-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cc  |
| [EV-075-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-01.png), [EV-075-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-02.png), [EV-075-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-03.png), [EV-075-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-04.png), [EV-075-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-05.png), [EV-075-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-06.png), [EV-075-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-075-07.png) |  URLScan summary pages, Classification results & Structural similarity findings – unitelmatch.cyou  |

---

# Confidence Assessment

| Indicator Category | Confidence |
|--------------------|------------|
| Domains                     | High          |
| IP Addresses                | High          |
| DNS                         | High          |
| Registrars                  | High          |
| Certificate Authorities     | High          |
| Hosting Providers           | High          |
| Operational Indicators      | High          |
| Cryptocurrency Observations | High          |
| Malware Indicators          | None Observed |

---

# Related Documents

- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Evidence_Register.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Evidence_Register.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store 