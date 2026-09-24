# DNS Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Updated

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
|--------|-------------|
| occupationoasis.com | ns-865.awsdns-44.net    |
| linkroles.my        | alina.ns.cloudflare.com |
| unitelmatch.top     | alina.ns.cloudflare.com |
| unitelmatch.cc      | alina.ns.cloudflare.com |
| unitelmatch.cyou    | alina.ns.cloudflare.com |

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

# DNS Infrastructure Comparison

| DNS Attribute          | occupationoasis.com                                                                  | linkroles.my                                 | unitelmatch.top                              | unitelmatch.cc                                             | unitelmatch.cyou                                   |
| ---------------------- | ------------------------------------------------------------------------------------ | -------------------------------------------- | -------------------------------------------- | ---------------------------------------------------------- | -------------------------------------------------- |
| Name Servers (Parent)  | ns-149.awsdns-18.comns-865.awsdns-44.netns-1883.awsdns-43.co.ukns-1422.awsdns-49.org | bob.ns.cloudflare.comalina.ns.cloudflare.com | bob.ns.cloudflare.comalina.ns.cloudflare.com | bob.ns.cloudflare.comalina.ns.cloudflare.com               | bob.ns.cloudflare.comalina.ns.cloudflare.com       |
| Parent NS TTL          | 172800                                                                               | 86400                                        | 3600                                         | 172800                                                     | 3600                                               |
| Local NS TTL           | 172800                                                                               | 86400                                        | 86400                                        | 86400                                                      | 86400                                              |
| SOA Primary Nameserver | ns-865.awsdns-44.net                                                                 | alina.ns.cloudflare.com                      | alina.ns.cloudflare.com                      | alina.ns.cloudflare.com                                    | alina.ns.cloudflare.com                            |
| SOA Hostmaster Email   | awsdns-hostmaster.amazon.com                                                         | dns.cloudflare.com                           | dns.cloudflare.com                           | dns.cloudflare.com                                         | dns.cloudflare.com                                 |
| SOA Serial Number      | 1                                                                                    | 2409939902                                   | 2410260643                                   | 2410260636                                                 | 2410373765                                         |
| SOA Refresh            | 7200                                                                                 | 10000                                        | 10000                                        | 10000                                                      | 10000                                              |
| SOA Retry              | 900                                                                                  | 2400                                         | 2400                                         | 2400                                                       | 2400                                               |
| SOA Expire             | 1209600                                                                              | 604800                                       | 604800                                       | 604800                                                     | 604800                                             |
| SOA Minimum TTL        | 86400                                                                                | 1800                                         | 1800                                         | 1800                                                       | 1800                                               |
| WWW A Records          | 65.8.180.4265.8.180.5265.8.180.9265.8.180.104                                        | 172.67.174.52104.21.30.243                   | 104.21.22.200172.67.206.231                  | 104.21.29.4172.67.171.54                                   | 104.21.45.78172.67.211.59                          |
| WWW A TTL              | 60                                                                                   | 300                                          | 300                                          | 300                                                        | 300                                                |
| Root A Records         | 18.239.36.1518.239.36.6218.239.36.9918.239.36.77                                     | 188.114.96.0188.114.97.0                     | 188.114.96.0188.114.97.0                     | 188.114.96.0188.114.97.0                                   | 104.21.45.78172.67.211.59                          |
| Root AAAA Records      | No AAAA records found                                                                | 2a06:98c1:3120::02a06:98c1:3121::0           | 2a06:98c1:3120::02a06:98c1:3121::0           | 2a06:98c1:3120::02a06:98c1:3121::0                         | 2606:4700:3030::ac43:d33b2606:4700:3033::6815:2d4e |
| MX Records             | No mail servers found                                                                | No mail servers found                        | No mail servers found                        | No mail servers found                                      | No mail servers found                              |
| TXT Records            | No TXT records found                                                                 | No TXT records found                         | No TXT records found                         | No TXT records found                                       | No TXT records found                               |
| CNAME Records          | No CNAME record found                                                                | No CNAME record found                        | No CNAME record found                        | No CNAME record found                                      | No CNAME record found                              |
| ASN                    | AS16509 / AS14618                                                                    | AS13335                                      | AS13335                                      | AS13335                                                    | AS13335                                            |
| AS Name                | amazon.com Inc.                                                                      | Cloudflare                                   | Cloudflare                                   | Cloudflare                                                 | Cloudflare                                         |
| Location               | Amsterdam, Netherlands                                                               | Medellín, ColombiaEmbsay, UK                 | Medellín, ColombiaEmbsay, UK                 | Pittsfield, ME (US)San Jose, CA (US)San Francisco, CA (US) |                                                    |

---

# DNS Correlation Matrix

| Feature             | OccupationOasis | LinkRoles | UnitelMatch.top | UnitelMatch.cc | UnitelMatch.cyou |
| ------------------- | --------------- | --------- | --------------- | -------------- | ---------------- |
| AWS Route53         |        ✅       |    ❌    |        ❌       |      ❌       |        ❌       |
| Cloudflare DNS      |        ❌       |    ✅    |        ✅       |      ✅       |        ✅       |
| Cloudflare WAF      |        ❌       |    ✅    |        ✅       |      ✅       |        ✅       |
| Cloudflare CDN      |        ❌       |    ✅    |        ✅       |      ✅       |        ✅       |
| No MX Records       |        ✅       |    ✅    |        ✅       |      ✅       |        ✅       |
| No TXT Records      |        ✅       |    ✅    |        ✅       |      ✅       |        ✅       |
| IPv6 Enabled        |        ❌*      |    ✅    |        ✅       |      ✅       |        ✅       |
| Shared Name Servers |        ❌       |    ✅    |        ✅       |      ✅       |        ✅       |

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
| [EV-026-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-01.png), [EV-026-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-02.png), [EV-026-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-03.png), [EV-026-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-04.png) | Reverse DNS Results – `occupationoasis.com` |
| [EV-026-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-05.png), [EV-026-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-06.png), [EV-026-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-07.png), [EV-026-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-08.png) | Reverse DNS Results – `linkroles.my` |
| [EV-026-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-09.png), [EV-026-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-10.png), [EV-026-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-11.png), [EV-026-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-12.png) | Reverse DNS Results – `unitelmatch.top` |
| [EV-026-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-13.png), [EV-026-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-14.png), [EV-026-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-15.png), [EV-026-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-16.png) | Reverse DNS Results – `unitelmatch.cc`  |
| [EV-026-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-17.png), [EV-026-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-18.png), [EV-026-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-19.png), [EV-026-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-20.png) | Reverse DNS Results – `unitelmatch.cyou` |
| [EV-026-21](http://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-21.png), [EV-026-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-22.png), [EV-026-23](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-23.png), [EV-026-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-026-24.png) | Reverse DNS Results – `ioutrankap.cyou` |
| [EV-032-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-01.png), [EV-032-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-02.png), [EV-032-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-03.png), [EV-032-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-04.png), [EV-032-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-05.png) | DNS Analysis – `occupationoasis.com` |
| [EV-032-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-06.png), [EV-032-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-07.png), [EV-032-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-08.png), [EV-032-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-09.png) | DNS Analysis – `linkroles.my` |
| [EV-032-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-10.png), [EV-032-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-11.png), [EV-032-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-12.png) | DNS Analysis – `unitelmatch.top` |
| [EV-032-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-13.png), [EV-032-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-14.png), [EV-032-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-15.png) | DNS Analysis – `unitelmatch.cc` |
| [EV-032-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-16.png) [EV-032-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-17.png) [EV-032-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-18.png), [EV-032-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-19.png) | DNS Analysis – `unitelmatch.cyou` |
| [EV-032-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-20.png), [EV-032-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-21.png), [EV-032-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-22.png) | DNS Analysis – `ioutrankap.cyou` |
| [EV-034-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-01.png), [EV-034-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-02.png), [EV-034-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-03.png)  | VirusTotal Relation Results – `occupationoasis.com` |
| [EV-034-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-04.png), [EV-034-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-05.png)  | VirusTotal Relation Results – `linkroles.my` | 
| [EV-034-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-06.png), [EV-034-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-07.png)  | VirusTotal Relation Results – `unitelmatch.top` |  
| [EV-034-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-08.png), [EV-034-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-09.png)  | VirusTotal Relation Results – `unitelmatch.cc` | 
| [EV-034-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-10.png), [EV-034-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-11.png)  | VirusTotal Relation Results – `unitelmatch.cyou` | 
| [EV-034-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-12.png), [EV-034-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-13.png), [EV-034-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-14.png), [EV-034-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-15.png), [EV-034-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-16.png) | VirusTotal Relation Results – `ioutrankap.cyou` |
| [EV-054-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-01.png), [EV-054-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-02.png), [EV-054-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-03.png), [EV-054-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-04.png), [EV-054-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-054-05.png) | AWS Route53 records – `occupationoasis.com` |

---

# Related Documents

- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Certificate_analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md) 
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Passive_dns.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 2.0 | 2026-09-21 | Added DNS analysis for `unitelmatch.cc` and `unitelmatch.cyou`; expanded comparison from three to five domains; documented common Cloudflare DNS infrastructure across operational portals; distinguished recruitment infrastructure from operational infrastructure; and added comparative DNS tables and infrastructure evolution analysis. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
