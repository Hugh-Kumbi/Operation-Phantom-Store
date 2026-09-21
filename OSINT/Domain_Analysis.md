# Domain Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Recruitment Campaign

**Classification:** Open Source Intelligence (OSINT)

**Version:** 2.0

---

## Objective

This document analyses the Domain Name System (DNS) infrastructure associated with the domains observed during the investigation. The objective is to identify common infrastructure characteristics, hosting providers, DNS configuration patterns, and relationships that may assist in understanding the campaign architecture.

The analysis is based solely on passive OSINT collection and publicly observable DNS records.

---

# Domains Analysed

| Domain | Role During Investigation |
|--------|---------------------------|
| occupationoasis.com | Initial recruitment website    |
| linkroles.my        | First operational portal       |
| unitelmatch.top     | Replacement operational portal |
| unitelmatch.cc      | Updated operational portal     |
| unitelmatch.cyou    | Backup operational portal      |

---

# DNS Infrastructure Comparison

| Domain | DNS Provider | Name Servers | CDN / Proxy | MX Records |
|--------|--------------|--------------|-------------|------------|
| occupationoasis.com | AWS Route53    | AWS Route53 | Amazon CloudFront | None |
| linkroles.my        | Cloudflare DNS | alina / bob | Cloudflare        | None |
| unitelmatch.top     | Cloudflare DNS | alina / bob | Cloudflare        | None |
| unitelmatch.cc      | Cloudflare DNS | alina / bob | Cloudflare        | None |
| unitelmatch.cyou    | Cloudflare DNS | alina / bob | Cloudflare        | None |

## DNS Correlation Matrix

| Feature             | OccupationOasis | LinkRoles | UnitelMatch.top | UnitelMatch.cc | UnitelMatch.cyou |
|---------------------|-----------------|-----------|-----------------|----------------|------------------|
| AWS Route53         |        ✅      |     ❌    |        ❌       |        ❌     |         ❌       |
| Cloudflare DNS      |        ❌      |     ✅    |        ✅       |        ✅     |         ✅       |
| Cloudflare WAF      |        ❌      |     ✅    |        ✅       |        ✅     |         ✅       |
| Cloudflare CDN      |        ❌      |     ✅    |        ✅       |        ✅     |         ✅       |
| No MX Records       |        ✅      |     ✅    |        ✅       |        ✅     |         ✅       |
| No TXT Records      |        ✅      |     ✅    |        ✅       |        ✅     |         ✅       |
| IPv6 Enabled        |        ❌*     |     ✅    |        ✅       |        ✅     |         ✅       |
| Shared Name Servers |        ❌      |     ✅    |        ✅       |        ✅     |         ✅       |

---

# Name Server Analysis

## Occupation Oasis

Name servers:

- ns-149.awsdns-18.com
- ns-865.awsdns-44.net
- ns-1883.awsdns-43.co.uk
- ns-1422.awsdns-49.org

The domain uses Amazon Route53 authoritative name servers consistent with hosting on AWS infrastructure.

---

## Operational Portals

The remaining operational domains all utilise identical Cloudflare authoritative name servers.

- alina.ns.cloudflare.com
- bob.ns.cloudflare.com

Observed on:

- linkroles.my
- unitelmatch.top
- unitelmatch.cc
- unitelmatch.cyou

This consistency indicates a common DNS management approach across the operational portals.

---

# SOA Comparison

| Domain | Primary SOA |
|---------|-------------|
| occupationoasis.com | ns-865.awsdns-44.net |
| linkroles.my | alina.ns.cloudflare.com |
| unitelmatch.top | alina.ns.cloudflare.com |
| unitelmatch.cc | alina.ns.cloudflare.com |
| unitelmatch.cyou | alina.ns.cloudflare.com |

The operational portals share the same Cloudflare SOA configuration, whereas the recruitment website uses Amazon Route53.

---

# DNS Record Comparison

## A Records

### occupationoasis.com

Hosted via Amazon CloudFront edge nodes.

Multiple AWS IP addresses observed.

### linkroles.my

Cloudflare Proxy

- 172.67.174.52
- 104.21.30.243

---

### unitelmatch.top

Cloudflare Proxy

- 172.67.206.231
- 104.21.22.200

---

### unitelmatch.cc

Cloudflare Proxy

- 172.67.171.54
- 104.21.29.4

---

### unitelmatch.cyou

Cloudflare Proxy

- 172.67.211.59
- 104.21.45.78

---

# IPv6 Support

IPv6 records were observed for:

- linkroles.my
- unitelmatch.top
- unitelmatch.cc
- unitelmatch.cyou

No IPv6 infrastructure was identified for occupationoasis.com during this investigation.

---

# Mail Infrastructure

No MX records were identified for any operational portal.

| Domain | MX Records |
|--------|------------|
| occupationoasis.com | None |
| linkroles.my        | None |
| unitelmatch.top     | None |
| unitelmatch.cc      | None |
| unitelmatch.cyou    | None |

The absence of mail infrastructure suggests the domains were not configured for conventional email services.

---

# TXT Records

No TXT records were identified.

Specifically, no evidence of:

- SPF
- DKIM
- DMARC

was observed for any operational portal.

---

# TTL Analysis

The operational domains consistently used relatively short DNS TTL values.

| Record | TTL |
|--------|-----|
| WWW A Records       | 300 seconds   |
| Parent Name Servers | 3600 seconds  |
| Local Name Servers  | 86400 seconds |

Short TTL values facilitate rapid infrastructure changes while allowing Cloudflare to manage caching efficiently.

---

# CDN Comparison

## Recruitment Website

occupationoasis.com

- Amazon CloudFront
- Amazon S3
- AWS Route53

---

## Operational Infrastructure

All operational portals utilise:

- Cloudflare CDN
- Cloudflare DNS
- Cloudflare Reverse Proxy
- Cloudflare WAF

This represents a distinct architectural shift from the initial recruitment website.

---

# Infrastructure Evolution

```text
Recruitment Website

occupationoasis.com
        │
        ▼
AWS Route53
Amazon CloudFront

────────────────────────────

Operational Infrastructure

linkroles.my
unitelmatch.top
unitelmatch.cc
unitelmatch.cyou
        │
        ▼
Cloudflare DNS
Cloudflare CDN
Cloudflare WAF
```

---

# Observed DNS Characteristics

Common characteristics across the operational domains include:

- Cloudflare authoritative name servers
- Cloudflare reverse proxy
- No MX records
- No TXT records
- Short DNS TTL values
- IPv6 enabled
- Cloudflare-managed SOA records

These similarities indicate a consistent DNS configuration strategy across the observed operational infrastructure.

---

# Analytical Assessment

The DNS analysis identifies two distinct infrastructure groups:

**Recruitment Infrastructure**

- occupationoasis.com

Characteristics:

- Amazon Route53
- Amazon CloudFront
- AWS-hosted infrastructure

**Operational Infrastructure**

- linkroles.my
- unitelmatch.top
- unitelmatch.cc
- unitelmatch.cyou

Characteristics:

- Cloudflare DNS
- Cloudflare reverse proxy
- Shared name servers
- Consistent DNS configuration
- Similar record structure

The investigation documents these technical similarities as observed facts. While the shared DNS characteristics support infrastructure correlation, they do not independently establish common ownership or operational control.

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-001-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-01.png), [EV-001-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-02.png), [EV-001-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-03.png), [EV-001-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-04.png) | Occupation Oasis job advertisement            |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png) | Chat              | Initial recruiter contact     | Collected |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png), [EV-002-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-02.png), [EV-002-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-03.png), [EV-002-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-04.png), [EV-002-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-05.png), [EV-002-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-06.png), [EV-002-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-07.png), [EV-002-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-08.png), [EV-002-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-09.png), [EV-002-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-10.png), [EV-002-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-11.png), [EV-002-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-12.png), [EV-002-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-13.png), [EV-002-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-14.png), [EV-002-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-15.png), [EV-002-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-16.png), [EV-002-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-17.png), [EV-002-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-18.png), [EV-002-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-19.png), [EV-002-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-20.png), [EV-002-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-21.png), [EV-002-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-22.png), [EV-002-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-23.png), [EV-002-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-24.png), [EV-002-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-25.png), [EV-002-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-26.png), [EV-002-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-27.png), [EV-002-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-28.png), [EV-002-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-29.png), [EV-002-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-30.png), [EV-002-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-31.png), [EV-002-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-32.png), [EV-002-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-33.png), [EV-002-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-34.png), [EV-002-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-35.png), [EV-002-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-36.png), [EV-002-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-37.png), [EV-002-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-38.png), [EV-002-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-39.png), [EV-002-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-40.png), [EV-002-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-41.png), [EV-002-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-42.png), [EV-002-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-43.png), [EV-002-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-44.png), [EV-002-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-45.png), [EV-002-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-46.png), [EV-002-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-47.png), [EV-002-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-48.png), [EV-002-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-49.png), [EV-002-50](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-50.png), [EV-002-51](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-51.png), [EV-002-52](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-52.png), [EV-002-53](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-53.png), [EV-002-54](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-54.png), [EV-002-55](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-55.png), [EV-002-56](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-56.png), [EV-002-57](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-57.png), [EV-002-58](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-58.png), [EV-002-59](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-59.png), [EV-002-60](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-60.png), [EV-002-61](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-61.png), [EV-002-62](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-62.png), [EV-002-63](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-63.png), [EV-002-64](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-64.png), [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png), [EV-002-66](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-66.png), [EV-002-67](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-67.png), [EV-002-68](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-68.png), [EV-002-69](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-69.png), [EV-002-70](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-70.png), [EV-002-71](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-71.png), [EV-002-72](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-72.png), [EV-002-73](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-73.png), [EV-002-74](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-74.png), [EV-002-75](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-75.png), [EV-002-76](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-76.png), [EV-002-77](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-77.png), [EV-002-78](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-78.png), [EV-002-79](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-79.png), [EV-002-80](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-80.png), [EV-002-81](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-81.png), [EV-002-82](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-82.png), [EV-002-83](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-83.png), [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png), [EV-002-85](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-85.png), [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png)      | Recruiter communication                       |
| [EV-009-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-009-01.png)      | linkroles.my registration URL                 |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) | Google Safe Browsing warning                  |
| [EV-002-65](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-65.png)      | Recruiter message introducing unitelmatch.top |
| [EV-002-84](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-84.png)      | Recruiter message introducing unitelmatch.cc |
| [EV-002-86](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-86.png)      | Recruiter message introducing unitelmatch.cyou |
| [EV-032-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-01.png), [EV-032-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-02.png), [EV-032-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-03.png), [EV-032-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-04.png), [EV-032-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-05.png) | ... ... ... ... ... ... ... ... ...  | DNS Analysis – occupationoasis.com | Collected |
| [EV-032-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-06.png), [EV-032-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-07.png), [EV-032-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-08.png), [EV-032-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-09.png) | ... ... ... ... ... ... ... ... ...  | DNS Analysis – linkroles.my | Collected |
| [EV-032-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-10.png), [EV-032-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-11.png), [EV-032-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-12.png) | ... ... ... ... ... ... ... ... ...  | DNS Analysis – unitelmatch.top | Collected |
| [EV-032-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-13.png), [EV-032-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-14.png), [EV-032-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-15.png) | ... ... ... ... ... ... ... ... ...  | DNS Analysis – unitelmatch.cc | Collected | 
| [EV-032-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-16.png) [EV-032-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-17.png) [EV-032-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-18.png), [EV-032-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-19.png) | ... ... ... ... ... ... ... ... ...  | DNS Analysis – unitelmatch.cyou | Collected |
| [EV-032-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-20.png), [EV-032-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-21.png), [EV-032-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-22.png) | ... ... ... ... ... ... ... ... ...  | DNS Analysis – ioutrankap.cyou | Collected |

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
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

---

# CHANGELOG

## Version 2.0

- Added DNS analysis for `unitelmatch.cc`.
- Added DNS analysis for `unitelmatch.cyou`.
- Expanded comparison from three to five domains.
- Documented common Cloudflare DNS infrastructure across operational portals.
- Distinguished recruitment infrastructure from operational infrastructure.
- Added comparative DNS tables and infrastructure evolution analysis.

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     