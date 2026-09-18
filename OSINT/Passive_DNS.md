# Passive DNS Analysis

**Case ID:** OSINT-2026-001  
**Investigation title:** Suspected multi-domain remote-recruitment phishing campaign  
**Classification:** OSINT / Cyber Threat Intelligence (CTI)  
**Status:** Active investigation  
**Version:** 2.0  

> **Handling note:** This report is an analytical assessment based on the evidence listed below. Infrastructure overlap supports association, but does not by itself establish legal attribution or the identity of an operator.

## Executive assessment

The available evidence supports a **high-confidence assessment** that `linkroles.my`, `unitelmatch.top`, `unitelmatch.cc`, and `unitelmatch.cyou` form a coordinated phishing/fraud infrastructure cluster. All four frontends use the same backend domain (`www.ioutrankap.cyou`), API namespace (`/tiny-shop/v1/`), tenant identifier (`merchant-id: 42`), Vue.js application pattern, Cloudflare deployment, and Google Trust Services certificates. The domains were registered and deployed within a narrow period from 19–24 July 2026, and all currently display a Google warning.

`occupationoasis.com` should **not** be included in that cluster. It uses a distinct AWS-based architecture, a different backend, different DNS, different certificate issuer, and different API structure. The evidence suggests it is a separate recruitment-related website; however, its legitimacy should be described as **not associated with the identified malicious cluster**, rather than as conclusively legitimate, unless independent corporate verification has been completed.

The backend domain, `ioutrankap.cyou`, predates the frontend domains by approximately 17 months, has a long certificate history, and shares the Gname.com registrar with `linkroles.my`. These findings strengthen the infrastructure-linkage assessment but do not independently identify the operator.

## Scope and methodology

Passive DNS records provide historical observations collected by third-party sensors. They can show historical resolutions, DNS changes, and infrastructure relationships, but they are incomplete and should not be treated as a complete record of every DNS state.

This assessment combines:

- Passive DNS observations.
- WHOIS/RDAP registration data.
- Certificate Transparency and TLS observations.
- HTTP, DNS, and application-technology inspection.
- URLScan, VirusTotal, Censys, Shodan, and related public intelligence results.

Cloudflare IP addresses and shared CDN infrastructure are not treated as origin-server indicators. Shared CDN addresses alone are weak evidence; application-level reuse, backend reuse, and identical configuration patterns carry greater evidentiary weight.

## Domains and collection status

| Domain | Role / assessment | Collection status |
|--------|-------------------|-------------------|
| `occupationoasis.com` | Separate domain; no identified overlap with the malicious cluster | Investigated |
| `linkroles.my`        | Frontend in the malicious cluster                                 | Investigated |
| `unitelmatch.top`     | Frontend in the malicious cluster                                 | Investigated |
| `unitelmatch.cc`      | Frontend in the malicious cluster                                 | Investigated |
| `unitelmatch.cyou`    | Frontend in the malicious cluster                                 | Investigated |
| `ioutrankap.cyou`     | Shared backend infrastructure                                     | Investigated |

The frontend domains `linkroles.my`, `unitelmatch.top`, `unitelmatch.cc` and `unitelmatch.cyou` were supplied directly by the recruiter during continued onboarding activity. That communication establishes how the domains were obtained; it does not, by itself, establish DNS, hosting, or operator relationships.

## Findings by domain

### `occupationoasis.com`

#### Observed characteristics

| Property | Observation |
|----------|-------------|
| Registration                  | 29 June 2026; Amazon Registrar, Inc.; expires 29 June 2027                         |
| Historical observation window | 21 July–17 August 2026                                                             |
| Hosting                       | Amazon CloudFront / S3 with an EC2-associated backend                              |
| ASN                           | AS16509 / AS14618 (Amazon)                                                         |
| DNS                           | AWS Route 53 name servers                                                          |
| Backend                       | `api.occupationoasis.com`; observed `/api/` endpoints                              |
| Certificate                   | Amazon RSA 2048 M01                                                                |
| Application                   | Nuxt.js / Vue.js SPA                                                               |
| Language / apparent purpose   | Japanese-language, jobs/recruitment-related indicators                             |
| Reputation                    | 0/92 VirusTotal detections in the supplied observation; no Google warning reported |

The site appears technically distinct from the malicious cluster. Relevant differences include AWS rather than Cloudflare infrastructure, Route 53 rather than `alina/bob.ns.cloudflare.com`, an internal `api.occupationoasis.com` backend rather than `www.ioutrankap.cyou`, and `/api/` rather than `/tiny-shop/v1/`.

**Assessment:** High confidence that `occupationoasis.com` is not part of the identified malicious cluster. The available evidence supports, but does not independently prove, that it is a legitimate recruitment-related business.

### Malicious frontend cluster

| Domain | Created | Registrar | Selected observations |
|--------|--------:|-----------|-----------------------|
| `linkroles.my`     | 19 Jul 2026 | Gname.com Pte. Ltd.               | Google warning; Cloudflare; shared backend and API                               |
| `unitelmatch.top`  | 23 Jul 2026 | Global Asset Domains Inc.         | Google warning; 4/92 VirusTotal detections; URLScan: “Phishing and Other Frauds” |
| `unitelmatch.cc`   | 23 Jul 2026 | Dynadot LLC                       | Google warning; 2/92 VirusTotal detections; shared backend and API               |
| `unitelmatch.cyou` | 24 Jul 2026 | Not provided in supplied evidence | Google warning; structurally identical frontend; 0/92 VirusTotal detections in the cited observation |

All four frontends are reported as Cloudflare-proxied Vue.js single-page applications. The strongest linkage indicators are:

- Requests to `www.ioutrankap.cyou`.
- API base path `/tiny-shop/v1/`.
- Hardcoded `merchant-id: 42` request header.
- Common endpoint pattern, including `site/config`, `member/member/index`, `shop/product/my-product`, and `index/index`.
- Cloudflare Browser Insights / Web Analytics.
- Google Trust Services WE1/WR1 certificates.
- Cloudflare name servers `alina.ns.cloudflare.com` and `bob.ns.cloudflare.com`.
- Broad CORS policy (`access-control-allow-origin: *`) where observed.
- URLScan structural similarity: approximately 937–938 KB and 23 requests for the compared frontends.

### `ioutrankap.cyou` backend

| Property | Observation |
|----------|-------------|
| Registration          | 14 February 2025; Gname.com Pte. Ltd.                                               |
| Expiry                | 14 February 2027                                                                    |
| WHOIS/RDAP lead       | State: Rosario; country: Argentina; treat as unverified and potentially falsifiable |
| DNS                   | `darwin.ns.cloudflare.com`, `zariyah.ns.cloudflare.com`                             |
| ASN                   | AS13335 (Cloudflare)                                                                |
| A records observed    | `172.67.154.35`, `104.21.4.145`                                                     |
| Mail records          | No MX or TXT records reported                                                       |
| Certificate history   | 26 certificates reported from February 2025 through September 2026                  |
| Certificate issuers   | Cloudflare issuing CAs, Let's Encrypt, and Google Trust Services WE1                |
| Frontend relationship | Serves or receives requests for the four malicious frontends                        |

The backend’s certificate history begins on the registration date and continues through the frontend deployment period. Google Trust Services WE1 certificates were first reported in March 2026, several months before the four frontends adopted the same certificate family.

A certificate reported as revoked in February 2026 is a notable anomaly. The available evidence does not establish whether revocation resulted from key compromise, misissuance, abuse handling, or an operator-initiated replacement.

## Shared infrastructure matrix

| Indicator | `occupationoasis.com` | Malicious frontends | `ioutrankap.cyou` |
|-----------|-----------------------|---------------------|-------------------|
| ASN / hosting      | Amazon; CloudFront/S3/EC2 | Cloudflare; AS13335           | Cloudflare; AS13335                                           |
| Name servers       | AWS Route 53              | `alina` / `bob` Cloudflare NS | `darwin` / `zariyah` Cloudflare NS                            |
| Certificate family | Amazon RSA 2048 M01       | Google Trust Services WE1/WR1 | Google Trust Services WE1 among other issuers                 |
| Backend            | `api.occupationoasis.com` | `www.ioutrankap.cyou`         | Backend itself                                                |
| API path           | `/api/`                   | `/tiny-shop/v1/`              | `/tiny-shop/v1/` observed/inferred from frontend relationship |
| Tenant identifier  | None reported             | `merchant-id: 42`             | Receives the tenant header where observed                     |
| Application        | Nuxt.js / Vue.js          | Vue.js SPA                    | API/backend role                                              |
| Google warning     | No warning reported       | Warning reported for all four | Not assessed as a frontend                                    |

## Timeline

All times are UTC unless otherwise stated. Dates marked “inferred” should be verified against the original registration or certificate records.

| Date | Domain(s) | Event |
|------|-----------|-------|
| 2025-02-14       | `ioutrankap.cyou`                    | Registration and first reported TLS certificates                                                         |
| 2026-03-20       | `ioutrankap.cyou`                    | First reported Google Trust Services WE1 certificate                                                     |
| 2026-06-29       | `occupationoasis.com`                | Registration and Amazon certificate issuance                                                             |
| 2026-07-19       | `linkroles.my`                       | Registration and reported TLS issuance                                                                   |
| 2026-07-22–23    | `linkroles.my`                       | Passive-DNS observation window                                                                           |
| 2026-07-23       | `unitelmatch.top`                    | Registration, TLS issuance, and first passive-DNS observation                                            |
| 2026-07-23       | `unitelmatch.cc`                     | Registration and WE1/WR1 certificate issuance                                                            |
| 2026-07-24       | `unitelmatch.cyou`                   | Registration inferred from certificate dates; certificates observed by Censys                            |
| 2026-07-31–08-01 | `unitelmatch.cyou`, `unitelmatch.cc` | HTTPS services observed active after HTTP redirects                                                      |
| 2026-08-04       | `unitelmatch.cc`, `unitelmatch.cyou` | First reported VirusTotal submissions; passive-DNS observations                                          |
| 2026-08-11       | `unitelmatch.cyou`                   | Last reported passive-DNS observation                                                                    |
| 2026-08-25       | `ioutrankap.cyou`                    | Reported Let's Encrypt YE2 certificate issuance                                                          |
| 2026-09-13       | `ioutrankap.cyou`                    | Most recent reported Google Trust Services WE1 certificate                                               |
| 2026-09-17       | All domains                          | Manual status assessment: `occupationoasis.com` accessible; four frontends reported with Google warnings |

### Timeline interpretation

- The four frontend domains were registered within six days, from 19–24 July 2026.
- The backend predates the frontend set by approximately 17 months.
- Certificates and Cloudflare configuration appear to have been provisioned rapidly after frontend registration.
- Sparse passive-DNS coverage limits conclusions about uptime, origin changes, and exact deployment order.

## Assessment and confidence

| Finding | Confidence | Basis and caveat |
|---------|------------|------------------|
| The four frontend domains form a common infrastructure cluster        | High        | Shared backend, API path, tenant identifier, application pattern, DNS, certificates, analytics, and structural similarity                                 |
| The cluster is associated with phishing/fraud activity                | High        | Google warnings for all four, URLScan classification for `unitelmatch.top`, VirusTotal detections for some domains, and common deceptive frontend architecture |
| `ioutrankap.cyou` is the shared backend                               | High        | Repeated frontend requests, common API namespace, endpoint structure, tenant header, and permissive CORS where observed                                         |
| `occupationoasis.com` is not part of the cluster                      | High        | No shared backend, API path, DNS, ASN, certificate issuer, or tenant identifier; separate AWS architecture                                              |
| The backend predates the frontends                                    | High        | 2025 registration and certificate history versus frontend registration in July 2026                                                                               |
| The infrastructure was deployed with automation                       | Medium-High | Rapid certificate issuance, repeated application artifacts, and common configuration; exact tooling is not established                                    |
| Gname.com is preferred for key infrastructure                         | Medium-High | Backend and `linkroles.my` share the registrar; other frontends use different registrars                                                                         |
| The registrant is located in Rosario, Argentina                       | Low–Medium  | WHOIS/RDAP field is a lead only; registrant data may be inaccurate or masked |
| The revoked certificate indicates a malicious security event          | Low–Medium  | Revocation is confirmed in the supplied data; its cause is unknown           |
| Cloudflare name-server separation was deliberate operational security | Low–Medium  | Different Cloudflare-assigned name servers are observed, but intent cannot be established from DNS alone                                                         |

## Limitations and gaps

- Passive-DNS observations are sparse and reflect sensor coverage, not continuous historical state.
- Cloudflare proxying prevents identification of the true origin from the supplied data.
- Shared Cloudflare IPs are multi-tenant and should not be used as unique attribution indicators.
- WHOIS/RDAP privacy prevents reliable registrant attribution for most frontends.
- No direct content, payment-flow, credential-collection, or victim-impact analysis is included in this report.
- The backend’s exact role—API server, data service, command-and-control system, or combination—should be described conservatively as **shared backend infrastructure** unless server-side evidence supports the term “C2.”
- The backend API path and tenant header for `unitelmatch.cyou` are described as inferred in the source material and require direct request capture for confirmation.

## Next steps

1. Capture and compare the frontend JavaScript bundles using cryptographic hashes and normalized-code similarity.
2. Confirm the API relationship for every frontend with controlled, non-destructive requests and record response headers, endpoint behavior, and tenant headers.
3. Query Certificate Transparency and passive-DNS sources for additional subdomains, historical origin clues, and other certificates associated with `ioutrankap.cyou`.
4. Investigate registrar, hosting, and abuse-report channels using the preserved evidence rather than relying on the WHOIS location field.
5. Submit coordinated abuse reports to the relevant registrar, hosting/CDN provider, browser safe-browsing provider, and domain registry where appropriate.
6. Keep `occupationoasis.com` in a separate case track until independent content, ownership, and business verification are complete.
7. Add an explicit “last verified” timestamp to every current-status and reputation claim.

## Source register

The supplied material names the following source categories and services. The final case package should record the exact query date, URL/report ID, and exported artifact for each observation:

- VirusTotal.
- URLScan.
- SecurityTrails.
- RiskIQ / PassiveTotal.
- DNSDB.
- Netlas.
- Censys.
- Shodan.
- WHOIS/RDAP.
- Certificate Transparency logs, including crt.sh where used.

## Change log

| Version | Date | Change |
|---------|------|--------|
| 1.1 | 2026-09-17 | Added frontend domains and forensic observations; source document contained repeated and partially conflicting sections |
| 2.0 | 2026-09-17 | Consolidated duplicate revisions, separated fact from assessment, corrected terminology, added limitations, confidence caveats, and collection recommendations |

---

# Related Documents

- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     