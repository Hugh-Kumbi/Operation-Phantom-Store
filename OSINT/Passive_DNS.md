# Passive DNS Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Active Investigation

**Version:** 1.1

---

# Objective

The purpose of this document is to analyze historical Domain Name System (DNS) information associated with domains identified during the investigation.

Unlike standard DNS analysis, passive DNS focuses on historical infrastructure observations collected by third-party intelligence providers.

Passive DNS may reveal:

- Historical IP addresses
- Infrastructure changes
- Hosting migrations
- Shared infrastructure
- Relationships between domains

---

# Domains Investigated

| Domain | Status |
|--------|----------|
| occupationoasis.com | Investigated |
| linkroles.my        | Investigated |
| unitelmatch.top     | Investigated |

## Version 1.1 Update — Additional Domains

Continued engagement with the recruiter resulted in the identification of two additional domains:

- `unitelmatch.cc`
- `unitelmatch.cyou`

Both domains were supplied directly by the recruiter during continued onboarding activity.

At the time of this documentation update, dedicated Passive DNS collection for these domains has not yet been completed. No historical DNS records, associated IP addresses, or additional infrastructure relationships should therefore be inferred from the recruiter communication alone.

### Current Collection Status

| Domain | Passive DNS Status | Source |
|--------|--------------------|--------|
| `unitelmatch.cc`   | Collected | Recruiter communication |
| `unitelmatch.cyou` | Collected | Recruiter communication |

The domains should be subjected to the same Passive DNS methodology previously applied to the other campaign infrastructure.

---

# Data Sources

Passive DNS information was obtained from publicly available intelligence services where available.

Examples include:

- VirusTotal
- SecurityTrails
- RiskIQ (PassiveTotal)
- DNSDB
- Netlas
- Censys

Where historical information was unavailable, this has been documented.

---

# Domain Analysis (Updated with Forensic Evidence)

## occupationoasis.com

### Historical Resolution

| Property | Value |
|----------|-------|
| **First Observed**          | 21 July, 2026                                                                              |
| **Last Observed**           | 17 August, 2026                                                                            |
| **Historical IPs**          | 18.154.101.74, 18.154.101.65, 18.154.101.49, 18.154.101.2, 13.249.74.87, 13.249.74.65, 13.249.74.17, 13.249.74.108, 195.110.124.154, 81.88.57.96, 74.208.106.209 |
| **Historical Name Servers** | ns-1422.awsdns-49.org, ns-149.awsdns-18.com, ns-1883.awsdns-43.co.uk, ns-865.awsdns-44.net |
| **Hosting Changes**         | 6 changes on 5 unique name servers over 3 years                                            |

### Registration

| Property | Value |
|----------|-------|
| **Domain Age**     | 79 days                   |
| **Created**        | 2026-06-29                |
| **Expires**        | 2027-06-29                |
| **Last Updated**   | 2026-08-19                |
| **Registrar**      | Amazon Registrar, Inc.    |
| **Privacy**        | Whoisprivacy: 1 (Enabled) |
| **Current Status** | Still accessible          |

### Technical Infrastructure

| Property | Value |
|----------|-------|
| **ASN**                   | AS16509 / AS14618 (Amazon.com, Inc.)                                                            |
| **Hosting / CDN**         | Amazon CloudFront + Amazon S3 (Static Origin)                                                   |
| **Edge Locations**        | Amsterdam, Netherlands (server-18-239-36-*.ams58.r.cloudfront.net)                              |
| **Name Servers**          | AWS Route 53 (ns-149.awsdns-18.com, ns-865.awsdns-44.net, etc.)                                 |
| **SOA**                   | ns-865.awsdns-44.net / awsdns-hostmaster.amazon.com (Serial: 1)                                 |
| **A Records (WWW)**       | 65.8.180.42, .52, .92, .104 (TTL 60 - AWS Load Balancer IPs)                                    |
| **TLS Issuer**            | Amazon RSA 2048 M01                                                                             |
| **TLS Validity**          | Jun 29 2026 – Jan 12 2027 (7 months)                                                            |
| **TLS SANs**              | occupationoasis.com, *.occupationoasis.com, tiger2027h1, nimbus2027                             |
| **Protocol**              | TLS 1.3 enforced                                                                                |
| **Port 80**               | 301 Redirect to HTTPS                                                                           |
| **Port 443**              | Active (Amazon CloudFront Load Balancer)                                                        |
| **Application Framework** | Nuxt.js / Vue.js (SPA)                                                                          |
| **Language**              | Japanese (Targeted)                                                                             |
| **Analytics**             | Google Tag Manager (GTM-N8G2QZSV), Google Analytics, DoubleClick Floodlight                     |
| **Backend API**           | api.occupationoasis.com (EC2 32.199.50.209)                                                     |
| **API Endpoints**         | OPTIONS/GET /api/health, GET /api/job-user/get-location, POST /api/customer-service-setting/get |
| **VirusTotal**            | 0/92 Malicious                                                                                  |
| **URLScan**               | No outgoing links; classified as "newly registered websites" and "jobs"                         |
| **Cookies**               | i18n_redirected=ja, _gcl_au (Google Ads)                                                        |

### Observations

`occupationoasis.com` is the oldest and only legitimate domain in this cluster, registered on 29 June 2026 (79 days old) with a one-year registration expiring 29 June 2027. It is hosted entirely on Amazon infrastructure (CloudFront CDN + S3 static origin + EC2 backend), uses AWS Route 53 name servers, and enforces TLS 1.3 with an Amazon-issued certificate. The site is a Nuxt.js/Vue.js SPA targeting a Japanese audience, with standard analytics (GTM, Google Analytics, DoubleClick Floodlight) and no reputation flags (0/92 VirusTotal). It remains accessible and has not received a Google warning.

**Critical distinction:** Despite the superficial similarity to the malicious cluster (Vue.js SPA, recent registration, Cloudflare/AWS infrastructure), occupationoasis.com uses a fundamentally different infrastructure stack:

- **Hosting:** Amazon CloudFront/S3/EC2 vs. Cloudflare proxy
- **Name Servers:** AWS Route 53 vs. Cloudflare (alina/bob)
- **Backend:** api.occupationoasis.com (EC2) vs. www.ioutrankap.cyou (external .cyou domain)
- **Certificates:** Amazon RSA 2048 M01 vs. Google Trust Services (WE1/WR1)
- **Purpose:** Professional marketing site vs. phishing/fraud frontend

The domain appears to be a legitimate business, possibly in the recruitment or employment sector (given the `/api/job-user/get-location` endpoint and "jobs" classification). It should **not** be grouped with the malicious domains in threat intelligence reporting.

---

## linkroles.my

### Historical Resolution

| Property | Value |
|----------|-------|
| **First Observed**          | 22 July, 2026                                                                                                  |
| **Last Observed**           | 23 July, 2026                                                                                                  |
| **Historical IPs**          | 172.67.174.52, 104.21.30.243, 188.114.96.0, 188.114.97.0, 2606:4700:3032::6815:1ef3, 2606:4700:3037::ac43:ae34 |
| **Historical Name Servers** | alina.ns.cloudflare.com, bob.ns.cloudflare.com, leah.ns.cloudflare.com, micah.ns.cloudflare.com                |
| **Hosting Changes**         | 1 change on 2 unique name servers over 0 year                                                                  |

### Registration

| Property | Value |
|----------|-------|
| **Domain Age**     | 59 days                                                                 |
| **Created**        | 2026-07-19                                                              |
| **Expires**        | 2027-07-19                                                              |
| **Last Updated**   | 2026-09-13                                                              |
| **Registrar**      | Gname.com Pte. Ltd.                                                     |
| **Privacy**        | FULL REDACTION (Name, Street, Phone, Admin, Tech, Billing all redacted) |
| **Current Status** | Google warning displayed                                                |

### Technical Infrastructure

| Property | Value |
|----------|-------|
| **ASN**                   | AS13335 (Cloudflare)                                                                                              |
| **Hosting / CDN**         | Cloudflare Load Balancer & WAF (Active)                                                                           |
| **IPs**                   | 172.67.174.52, 104.21.30.243 (Proxied)                                                                            |
| **Name Servers**          | Cloudflare (bob.ns.cloudflare.com / alina.ns.cloudflare.com)                                                      |
| **SOA**                   | alina.ns.cloudflare.com / dns.cloudflare.com (Serial: 2409939902)                                                 |
| **A Records (WWW)**       | 172.67.174.52 / 104.21.30.243 (TTL 300)                                                                           |
| **TLS Issuer**            | Google Trust Services (WE1 & WR1 - Dual Certs)                                                                    |
| **TLS Validity**          | Jul 19 – Oct 17, 2026 (3 months)                                                                                  |
| **TLS SANs**              | www.linkroles.my only                                                                                             |
| **Protocol**              | HTTP/3 / QUIC supported                                                                                           |
| **Application Framework** | Vue.js (SPA)                                                                                                      |
| **Analytics**             | Cloudflare Browser Insights RUM (static.cloudflareinsights.com/beacon.min.js)                                     |
| **Backend Domain**        | www.ioutrankap.cyou                                                                                               |
| **API Base Path**         | https://www.ioutrankap.cyou/tiny-shop/v1/                                                                         |
| **API Endpoints**         | GET /site/config, GET /member/member/index, GET /shop/product/my-product?offset=0&limit=9999999, GET /index/index |
| **Request Headers**       | merchant-id: 42, x-api-key: (empty)                                                                               |
| **VirusTotal**            | 0/92 (Not yet flagged due to age, but high risk)                                                                  |
| **URLScan**               | "High Confidence - Suspicious"                                                                                    |
| **Shodan**                | No results (Behind Cloudflare)                                                                                    |

### Observations

`linkroles.my` was registered on 19 July 2026 (59 days old) with a one-year registration expiring 19 July 2027. It now displays a Google warning. The domain is a **static shell** — it loads a blank HTML page and a large JavaScript bundle (index-1PXQSD9h.js) — with all dynamic content fetched via XHR from `www.ioutrankap.cyou`. This cross-domain architecture (frontend on .my, backend on .cyou) is a deliberate obfuscation technique to separate the visible domain from the data-serving infrastructure.

**Definitive links to the malicious cluster:**

- **Backend domain:** www.ioutrankap.cyou (identical to unitelmatch.top, unitelmatch.cc, and unitelmatch.cyou)
- **API base path:** /tiny-shop/v1/ (identical across all four malicious domains)
- **Hardcoded tenant ID:** merchant-id: 42 (identical across all four malicious domains)
- **Application framework:** Vue.js SPA (identical)
- **Analytics:** Cloudflare Browser Insights (identical)
- **Name servers:** Cloudflare alina/bob (identical to unitelmatch domains)
- **TLS issuer:** Google Trust Services WE1/WR1 (identical to unitelmatch domains)

The domain is structurally identical to the three unitelmatch domains, with URLScan confirming three structurally identical websites: www.unitelmatch.cc (8h old, 937 KB, 23 requests), www.unitelmatch.top (11d old, 937 KB, 23 requests), and www.linkroles.my (12d old, 938 KB, 23 requests).

---

## unitelmatch.top

### Historical Resolution

| Property | Value |
|----------|-------|
| **First Observed**          | 23 July, 2026                                                                       |
| **Last Observed**           | 04 August, 2026                                                                     |
| **Historical IPs**          | 172.67.206.231, 104.21.22.200, 2606:4700:3032::ac43:cee7, 2606:4700:3035::6815:16c8 |
| **Historical Name Servers** | a.share-dns.com, b.share-dns.net                                                    |
| **Hosting Changes**         | 2 changes on 2 unique name servers over 0 year                                      |

### Registration

| Property | Value |
|----------|-------|
| **Domain Age**     | 55 days                                               |
| **Created**        | 2026-07-23                                            |
| **Expires**        | 2027-07-23                                            |
| **Last Updated**   | 2026-07-25                                            |
| **Registrar**      | GLOBAL ASSET DOMAINS INC.                             |
| **Privacy**        | FULL REDACTION (Complete WHOIS privacy on all fields) |
| **Current Status** | Google warning displayed                              |

### Technical Infrastructure

| Property | Value |
|----------|-------|
| **ASN**                   | AS13335 (Cloudflare)                                              |
| **Hosting / CDN**         | Cloudflare Load Balancer & WAF                                    |
| **IPs**                   | 172.67.206.231, 104.21.22.200 (Proxied)                           |
| **Name Servers**          | Cloudflare (bob.ns.cloudflare.com / alina.ns.cloudflare.com)      |
| **SOA**                   | alina.ns.cloudflare.com / dns.cloudflare.com (Serial: 2410260643) |
| **A Records (WWW)**       | 172.67.206.231 / 104.21.22.200 (TTL 300)                          |
| **TLS Issuer**            | Google Trust Services (WE1 & WR1)                                 |
| **TLS Validity**          | Jul 23 – Oct 21, 2026 (3 months)                                  |
| **TLS SANs**              | www.unitelmatch.top only                                          |
| **Protocol**              | QUIC supported                                                    |
| **Application Framework** | Vue.js (Identical to linkroles)                                   |
| **Analytics**             | Cloudflare Browser Insights                                       |
| **Backend Domain**        | www.ioutrankap.cyou                                               |
| **API Base Path**         | https://www.ioutrankap.cyou/tiny-shop/v1/                         |
| **Request Headers**       | merchant-id: 42 (Same tenant ID as linkroles)                     |
| **VirusTotal**            | 4/92 Vendors flagged as Malicious                                 |
| **URLScan**               | Categorized as "Phishing and Other Frauds"                        |
| **Shodan**                | No results                                                        |

### Observations

`unitelmatch.top` was registered on 23 July 2026 (55 days old) with a one-year registration expiring 23 July 2027. It now displays a Google warning. The domain is a **confirmed malicious phishing/fraud site** and a **structural twin of linkroles.my** — it uses the same Vue.js SPA framework, the same Cloudflare Browser Insights analytics, the same backend domain (`www.ioutrankap.cyou`), the same API base path (`/tiny-shop/v1/`), and the same hardcoded tenant ID (`merchant-id: 42`).

**Definitive links to the malicious cluster:**

- **Backend domain:** www.ioutrankap.cyou (identical to all other malicious domains)
- **API base path:** /tiny-shop/v1/ (identical)
- **Hardcoded tenant ID:** merchant-id: 42 (identical)
- **Application framework:** Vue.js SPA (identical)
- **TLS issuer:** Google Trust Services WE1/WR1 (identical)
- **Name servers:** Cloudflare alina/bob (identical to unitelmatch.cc, unitelmatch.cyou, linkroles.my)
- **VirusTotal:** 4/92 vendors flag as malicious (the highest detection rate in the cluster)
- **URLScan:** Explicitly categorized as "Phishing and Other Frauds"

**Note on name servers:** The historical resolution data shows a.share-dns.com and b.share-dns.net as name servers, but the current forensic data confirms Cloudflare alina/bob. This indicates a DNS migration occurred — the domain was initially configured with share-dns.com/net before being moved to Cloudflare. This is consistent with a rapidly deployed malicious campaign.

---

## unitelmatch.cc

### Historical Resolution

| Property | Value |
|----------|-------|
| **First Observed**          | 04 August, 2026                                                                  |
| **Last Observed**           | 04 August, 2026                                                                  |
| **Historical IPs**          | 172.67.171.54, 104.21.29.4, 2606:4700:3033::ac43:ab36, 2606:4700:3030::6815:1d04 |
| **Historical Name Servers** | alina.ns.cloudflare.com, dns.cloudflare.com, bob.ns.cloudflare.com               |
| **Hosting Changes**         | 2 changes on 2 unique name servers over 0 year                                   |

### Registration

| Property | Value |
|----------|-------|
| **Domain Age**             | 55 days                                                                                        |
| **Created**                | 2026-07-23                                                                                     |
| **Expires**                | 2027-07-23                                                                                     |
| **Last Updated**           | 2026-09-02                                                                                     |
| **Registrar**              | DYNADOT LLC (IANA ID: 472)                                                                     |
| **Registrar WHOIS Server** | whois.dynadot.com                                                                              |
| **Registry Domain ID**     | 209502487_DOMAIN_CC-VRSN                                                                       |
| **Domain Status**          | clientTransferProhibited                                                                       |
| **DNSSEC**                 | unsigned                                                                                       |
| **Privacy**                | Full REDACTION via Super Privacy Service LTD c/o Dynadot (PO Box 701, San Mateo, CA 94401, US) |
| **Registrant Phone**       | +1.6505854708                                                                                  |
| **Abuse Contact**          | abuse@dynadot.com / +1.6502620100                                                              |
| **Current Status**         | Google warning displayed                                                                       |

### Technical Infrastructure

| Property | Value |
|----------|-------|
| **ASN**                                | AS13335 (Cloudflare)                                                           `|
| **Hosting / CDN**                      | Cloudflare Load Balancer + Cloudflare WAF                                      |
| **Edge Locations**                     | Medellín, Antioquia, Colombia & Embsay, United Kingdom                         |
| **True Origin**                        | Hidden behind Cloudflare proxy                                                 |
| **Name Servers**                       | Cloudflare (bob.ns.cloudflare.com / alina.ns.cloudflare.com)                   |
| **SOA**                                | alina.ns.cloudflare.com / dns.cloudflare.com (Serial: 2410260636)              |
| **Refresh / Retry / Expire / Min TTL** | 10000 / 2400 / 604800 / 1800                                                   |
| **A Records (WWW)**                    | 104.21.29.4, 172.67.171.54 (TTL 300)                                           |
| **A Records (Root)**                   | 188.114.96.0, 188.114.97.0                                                     |
| **AAAA Records**                       | 2a06:98c1:3120::0, 2a06:98c1:3121::0                                           |
| **MX**                                 | No mail servers found                                                          |
| **TXT**                                | No TXT records found                                                           |
| **CNAME**                              | No CNAME record found                                                          |
| **TLS Cert 1 (WR1 - RSA 2048)**        | Issuer: Google Trust Services WR1; SHA256: a9cc0520eb95941d587f9f6daef204f3c890e7519d1baff3fc470e62e7bee2bc; Validity: Jul 23 – Oct 21, 2026; SANs: www.unitelmatch.cc |
| **TLS Cert 2 (WE1 - ECDSA)**           | Issuer: Google Trust Services WE1; SHA256: 58302772c755a466c301a6a82434b5ed1d4c41d368407301bf1ededbea6e6166; Validity: Jul 23 – Oct 21, 2026; SANs: www.unitelmatch.cc |
| **Protocol**                           | HTTP/3 / QUIC supported                                                        |
| **Certificate Provisioning**           | Automated via Cloudflare (issued seconds after domain creation)                |
| **Port 80**                            | 301 Moved Permanently to https://www.unitelmatch.cc/                           |
| **Port 443**                           | Active, browser-trusted connection                                             |
| **Application Framework**              | Vue.js (SPA)                                                                   |
| **Analytics**                          | Cloudflare Browser Insights RUM (static.cloudflareinsights.com/beacon.min.js)  |
| **CDN**                                | Cloudflare                                                                     |
| **Locale**                             | Cocos (Keeling) Islands (due to .cc TLD)                                       |
| **Languages**                          | English                                                                        |
| **Backend Domain**                     | www.ioutrankap.cyou                                                            |
| **API Base Path**                      | /tiny-shop/v1/                                                                 |
| **API Endpoints**                      | GET /tiny-shop/v1/site/config, GET /tiny-shop/v1/member/member/index, GET /tiny-shop/v1/shop/product/my-product?offset=0&limit=9999999, GET /tiny-shop/v1/index/index |
| **Request Headers**                    | merchant-id: 42 (Hardcoded tenant identifier), x-api-key: (empty)              |
| **CORS Policy**                        | access-control-allow-origin: * (allows cross-origin requests from any domain)  |
| **VirusTotal**                         | 2/92 Security Vendors Flagged as Malicious                                     |
| **VT Categories**                      | suspicious content (Forcepoint ThreatSeeker)                                   |
| **VT Tags**                            | external-resources                                                             |
| **Serving IP**                         | 172.67.171.54                                                                  |
| **Current Status Code**                | 200 (OK)                                                                       |
| **First Submission**                   | 2026-08-04 03:33:13 UTC                                                        |
| **Domain Age at Submission**           | ~12 days                                                                       |
| **Web Technologies**                   | HTTP/3, Cloudflare, Vue.js                                                     |
| **URLScan**                            | Not provided (likely blocked by WAF or scan in progress)                       |
| **Shodan**                             | No results found (Cloudflare WAF blocks direct IP scanning)                    |
| **Reverse DNS**                        | 188.114.96.0: 1,967 domains; 188.114.97.0: 1,983 domains; IPv6: No PTR records |

### Observations

`unitelmatch.cc` was registered on 23 July 2026 (55 days old) with a one-year registration expiring 23 July 2027. It now displays a Google warning. The domain is a **confirmed malicious phishing/fraud site** and is structurally identical to `linkroles.my` and `unitelmatch.top`. The WHOIS data reveals full privacy redaction via Super Privacy Service LTD c/o Dynadot, a legitimate registrar frequently abused for malicious registrations. The registrant phone (+1.6505854708) and abuse contact (`abuse@dynadot.com`) are the only non-redacted details.

**Definitive links to the malicious cluster:**

- **Backend domain:** www.ioutrankap.cyou (identical to all other malicious domains)
- **API base path:** /tiny-shop/v1/ (identical)
- **Hardcoded tenant ID:** merchant-id: 42 (identical)
- **Application framework:** Vue.js SPA (identical)
- **TLS issuer:** Google Trust Services WE1/WR1 (identical)
- **Name servers:** Cloudflare alina/bob (identical)
- **Analytics:** Cloudflare Browser Insights (identical)
- **CORS Policy:** access-control-allow-origin: * (identical)
- **Certificate provisioning:** Automated via Cloudflare, issued seconds after domain creation (identical pattern)
- **VirusTotal:** 2/92 vendors flag as malicious
- **URLScan structure similarity:** Confirmed structurally identical to unitelmatch.top and linkroles.my (937 KB, 23 requests)

**Unique forensic detail:** The domain uses both 188.114.96.0 and 188.114.97.0 for root A records, which are Cloudflare shared IPs hosting 1,967 and 1,983 domains respectively. This is consistent with Cloudflare's shared infrastructure model and does not indicate a dedicated malicious server.

---

## unitelmatch.cyou

### Historical Resolution

| Property | Value |
|----------|-------|
| **First Observed**          | 04 August, 2026                                |
| **Last Observed**           | 11 August, 2026                                |
| **Historical IPs**          | 172.67.211.59, 104.21.45.78                    |
| **Historical Name Servers** | alina.ns.cloudflare.com, bob.ns.cloudflare.com |
| **Hosting Changes**         | 2 changes on 2 unique name servers over 0 year |

### Registration

| Property | Value |
|----------|-------|
| **Domain Age**     | 54 days                                                               |
| **Created**        | 2026-07-24                                                            |
| **Expires**        | 2027-07-24                                                            |
| **Last Updated**   | 2026-09-11                                                            |
| **Registrar**      | Unknown (WHOIS data not provided in scan)                             |
| **TLD**            | .cyou (Cheap TLD frequently associated with malicious infrastructure) |
| **Privacy**        | Not provided in available data                                        |
| **Current Status** | Google warning displayed                                              |

### Technical Infrastructure

| Property | Value |
|----------|-------|
| **ASN**                                | AS13335 (Cloudflare)                                                                             |
| **Hosting / CDN**                      | Cloudflare Load Balancer + Cloudflare WAF                                                        |
| **Edge Locations**                     | Pittsfield, Maine (US), San Jose, California (US), San Francisco, California (US)                |
| **True Origin**                        | Hidden behind Cloudflare proxy                                                                   |
| **Server Header**                      | cloudflare                                                                                       |
| **Name Servers**                       | Cloudflare (bob.ns.cloudflare.com / alina.ns.cloudflare.com)                                     |
| **Parent NS TTL**                      | 3600                                                                                             |
| **Local NS TTL**                       | 86400                                                                                            |
| **SOA**                                | alina.ns.cloudflare.com / dns.cloudflare.com (Serial: 2410373765)                                |
| **Refresh / Retry / Expire / Min TTL** | 10000 / 2400 / 604800 / 1800                                                                     |
| **A Records (WWW)**                    | 104.21.45.78, 172.67.211.59 (TTL 300)                                                            |
| **AAAA Records**                       | 2606:4700:3030::ac43:d33b, 2606:4700:3033::6815:2d4e                                             |
| **MX**                                 | No mail servers found                                                                            |
| **TXT**                                | No TXT records found                                                                             |
| **CNAME**                              | No CNAME record found                                                                            |
| **TLS Cert 1 (WR1 - RSA)**             | crt.sh ID: 28208444402; Issuer: Google Trust Services WR1; Logged: 2026-07-24; Validity: Jul 24 – Oct 22, 2026; CN: www.unitelmatch.cyou |
| **TLS Cert 2 (WE1 - ECDSA)**           | crt.sh ID: 28208447179; Issuer: Google Trust Services WE1; Logged: 2026-07-24; Validity: Jul 24 – Oct 22, 2026; CN: www.unitelmatch.cyou |
| **Protocol**                           | HTTP/3 / QUIC supported                                                                          |
| **Certificate Provisioning**           | Automated via Cloudflare (issued on domain creation)                                             |
| **Censys Cert Observations**           | Cert 1 (WE1): Observed 2026-07-24 12:05 UTC; Cert 2 (WR1): Observed 2026-07-24 10:27 UTC         |
| **Port 80**                            | 301 Moved Permanently to https://www.unitelmatch.cyou/                                           |
| **Port 443**                           | Active, browser-trusted connection                                                               |
| **Application Framework**              | Vue.js (SPA)                                                                                     |
| **JavaScript Libraries**               | core-js, lodash, Vue                                                                             |
| **Analytics**                          | Cloudflare Browser Insights / Cloudflare Web Analytics                                           |
| **CDN**                                | Cloudflare CDN                                                                                   |
| **Mobile Support**                     | Viewport Meta, iPhone/Mobile Compatible, Mobile Non-Scaleable Content                            |
| **DNS**                                | Cloudflare DNS                                                                                   |
| **Hosting**                            | Cloudflare Hosting                                                                               |
| **Network Error Logging**              | Cloudflare NEL                                                                                   |
| **SSL**                                | SSL by Default (redirects to HTTPS)                                                              |
| **Cache Control**                      | public, max-age=0, must-revalidate                                                               |
| **Security Headers**                   | X-Content-Type-Options: nosniff                                                                  |
| **Backend Domain**                     | www.ioutrankap.cyou (Identical to unitelmatch.cc pattern)                                        |
| **API Base Path**                      | /tiny-shop/v1/ (Inferred from pattern)                                                           |
| **API Endpoints**                      | GET /tiny-shop/v1/site/config, GET /tiny-shop/v1/member/member/index, GET /tiny-shop/v1/shop/product/my-product?offset=0&limit=9999999, GET /tiny-shop/v1/index/index |
| **Request Headers**                    | merchant-id: 42 (Hardcoded tenant identifier), x-api-key: (empty)                                |
| **CORS Policy**                        | access-control-allow-origin: * (confirmed in HTTP headers)                                       |
| **Actual HTTP Response Headers**       | cache-control: public, max-age=0, must-revalidate; alt-svc: h3=":443"; ma=86400; nel: {"report_to":"cf-nel","success_fraction":0.0,"max_age":604800}; report-to: {"group":"cf-nel","max_age":604800,"endpoints":[{"url":"https://a.nel.cloudflare.com/report/v4?s=uggmirxl3XSbP1cdAfPEt5FzAhSdRj3LUPMGYIA6Y4l2upoZhhb4bsy9ytRRBSGWdoWMYB%2BWMurxAip7nZ0J1wZyytqSWwj43aInn2nDvzjaBJdr9gHyVgIpSWodvmFaw6Ainn6vhg%3D%3D"}]}; content-type: text/html; charset=utf-8; server: cloudflare; access-control-allow-origin: *; server-timing: cfCacheStatus;desc="DYNAMIC" cfEdge;dur=7,cfOrigin;dur=38 cfExtPri; x-content-type-options: nosniff; date: Tue, 04 Aug 2026 10:40:56 GMT; referrer-policy: strict-origin-when-cross-origin; cf-ray: a25cf263ab13e9e0-LAX; vary: accept-encoding; content-encoding: br; cf-cache-status: DYNAMIC; priority: u=0,i |
| **VirusTotal**                          | 0/92 Security Vendors Flagged as Malicious                                                      |
| **VT Categories**                       | newly registered websites (Forcepoint ThreatSeeker), social_media (Google)                      |
| **VT Tags**                             | external-resources                                                                              |
| **Serving IP**                          | 104.21.45.78                                                                                    |
| **Current Status Code**                 | 200 (OK)                                                                                        |
| **Body Length**                         | 1.29 KB                                                                                         |
| **First Submission**                    | 2026-08-04 10:40:56 UTC                                                                         |
| **Domain Age at Submission**            | ~11 days                                                                                        |
| **Web Technologies**                    | Cloudflare, HTTP/3, Vue.js                                                                      |
| **URLScan**                             | Only scan; No classification; Google Safe Browsing: No classification; 23 HTTP transactions; 3 IPs in 2 countries across 3 domains; Main IP: 172.67.211.59 (Ascension Island, Cloudflare); Domain Age: 11d; TLS: WE1, July 24 2026, 3 months; Redirect: HTTP 307 → HTTPS; Cookies: 0; Security Headers: X-Content-Type-Options: nosniff |
| **JS Window Variables**                | VUE_INSTANCE_SETTERS, VUE_SSR_SETTERS, vueuse_ssr_handlers, VUE, VUE_I18N_FULL_INSTALL, VUE_I18N_LEGACY_API, __cfBeacon |
| **BuiltWith Technologies**             | Cloudflare Insights, Cloudflare Web Analytics, iPhone/Mobile Compatible, Mobile Non-Scaleable Content, Viewport Meta, Cloudflare (CDN), core-js, lodash, JavaScript Modules, Vue, Intersection Observer, Cloudflare DNS, Cloudflare Hosting, Cloudflare Network Error Logging, SSL by Default, Cloudflare CDN |
| **Shodan**                             | No results found (Cloudflare WAF blocks direct IP scanning) |
| **Reverse DNS**                        | 172.67.211.59: 1,695 domains; 104.21.45.78: 1,656 domains; IPv6: No PTR records |
| **Structure Similarity**               | www.unitelmatch.cc (8h old, 937 KB, 23 requests), www.unitelmatch.top (11d old, 937 KB, 23 requests), www.linkroles.my (12d old, 938 KB, 23 requests) |

### Observations

unitelmatch.cyou was registered on 24 July 2026 (54 days old) with a one-year registration expiring 24 July 2027. It now displays a Google warning. The domain is a **confirmed malicious phishing/fraud site** and is structurally identical to unitelmatch.cc, unitelmatch.top, and linkroles.my. The certificate transparency logs show certificates issued on 24 July 2026 (the same day as domain creation), with Censys observing the WE1 certificate at 12:05 UTC and the WR1 certificate at 10:27 UTC — indicating automated provisioning within hours of registration.

**Definitive links to the malicious cluster:**

- **Backend domain:** www.ioutrankap.cyou (identical to all other malicious domains)
- **API base path:** /tiny-shop/v1/ (inferred from pattern, identical)
- **Hardcoded tenant ID:** merchant-id: 42 (inferred from pattern, identical)
- **Application framework:** Vue.js SPA with core-js and lodash (identical)
- **TLS issuer:** Google Trust Services WE1/WR1 (identical)
- **Name servers:** Cloudflare alina/bob (identical)
- **Analytics:** Cloudflare Browser Insights / Web Analytics (identical)
- **CORS Policy:** access-control-allow-origin: * (confirmed, identical)
- **Certificate provisioning:** Automated via Cloudflare, issued on domain creation (identical pattern)
- **URLScan structure similarity:** Confirmed structurally identical to unitelmatch.cc, unitelmatch.top, and linkroles.my (23 HTTP transactions, 937–938 KB, same request pattern)

**Unique forensic detail:** The URLScan data reveals 0 cookies set, which is unusual for a legitimate e-commerce site (the backend API endpoints suggest a shop/member system). This is consistent with a phishing frontend that does not maintain session state. The presence of __VUE_I18N_FULL_INSTALL__ and __VUE_I18N_LEGACY_API__ indicates internationalization support, consistent with a multi-language phishing kit.

---

## Shared Infrastructure Matrix

| Indicator | occupationoasis.com | linkroles.my | unitelmatch.top | unitelmatch.cc | unitelmatch.cyou |
|-----------|---------------------|--------------|-----------------|----------------|------------------|
| **Shared IP**               | No — 65.8.180.42, .52, .92, .104 (AWS CloudFront)             | Yes — 172.67.174.52, 104.21.30.243 (Cloudflare) | Yes — 172.67.206.231, 104.21.22.200 (Cloudflare)                  | Yes — 172.67.171.54, 104.21.29.4, 188.114.96.0, 188.114.97.0 (Cloudflare) | Yes — 172.67.211.59, 104.21.45.78 (Cloudflare) |
| **Shared ASN**              | No — AS16509 / AS14618 (Amazon)                                | Yes — AS13335 (Cloudflare) | Yes — AS13335 (Cloudflare) | Yes — AS13335 (Cloudflare) | Yes — AS13335 (Cloudflare) |
| **Shared Certificate**      | No — Amazon RSA 2048 M01                                       | Yes — Google Trust Services WE1/WR1 | Yes — Google Trust Services WE1/WR1 | Yes — Google Trust Services WE1/WR1 | Yes — Google Trust Services WE1/WR1 |
| **Shared Name Server**      | No — AWS Route 53 (ns-149.awsdns-18.com, ns-865.awsdns-44.net) | Yes — alina.ns.cloudflare.com, bob.ns.cloudflare.com | Yes — alina.ns.cloudflare.com, bob.ns.cloudflare.com | Yes — alina.ns.cloudflare.com, bob.ns.cloudflare.com | Yes — alina.ns.cloudflare.com, bob.ns.cloudflare.com |
| **Shared Hosting Provider** | No — Amazon CloudFront / S3 / EC2                              | Yes — Cloudflare | Yes — Cloudflare | Yes — Cloudflare | Yes — Cloudflare |
| **Shared Backend Domain**   | No — api.occupationoasis.com | Yes — www.ioutrankap.cyou       | Yes — www.ioutrankap.cyou | Yes — www.ioutrankap.cyou | Yes — www.ioutrankap.cyou |
| **Shared API Path**         | No — /api/                                                     | Yes — /tiny-shop/v1/ | Yes — /tiny-shop/v1/ | Yes — /tiny-shop/v1/ | Yes — /tiny-shop/v1/ |
| **Shared Tenant ID**        | No — N/A                                                       | Yes — merchant-id: 42 | Yes — merchant-id: 42 | Yes — merchant-id: 42 | Yes — merchant-id: 42 |
| **Shared Framework**        | No — Nuxt.js / Vue.js                                          | Yes — Vue.js SPA | Yes — Vue.js SPA | Yes — Vue.js SPA | Yes — Vue.js SPA |

---

# Infrastructure Relationships

The investigation will evaluate whether any of the observed domains share:

- IP addresses
- Autonomous Systems (ASNs)
- Name servers
- TLS certificates
- Hosting providers
- Reverse DNS entries

Relationships will only be documented where supported by collected evidence.

---

# Shared Infrastructure Matrix

| Indicator | occupationoasis.com | linkroles.my | unitelmatch.top |
|-----------|---------------------|--------------|-----------------|
| Shared IP               | Pending | Pending | Pending |
| Shared ASN              | Pending | Pending | Pending |
| Shared Certificate      | Pending | Pending | Pending |
| Shared Name Server      | Pending | Pending | Pending |
| Shared Hosting Provider | Pending | Pending | Pending |

---

# Timeline

Passive DNS observations will be incorporated into the investigation timeline as historical evidence becomes available.

---

# Confidence Assessment

Historical DNS findings will receive confidence ratings according to:

| Confidence | Definition |
|------------|------------|
| High   | Supported by multiple independent passive DNS providers |
| Medium | Supported by a single reputable source                  |
| Low    | Limited or incomplete historical data                   |

---

# Investigator Notes

At the time of writing, passive DNS collection is ongoing.

This document will be updated as additional historical DNS evidence is collected.

---

# Related Documents

- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     