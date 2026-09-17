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

# Domain Analysis

---

## occupationoasis.com

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | 21 July, 2026                                                                              |
| Last Observed           | 17 September, 2026                                                                         |
| Historical IPs          | 18.154.101.74, 18.154.101.65, 18.154.101.49, 18.154.101.2, 13.249.74.87, 13.249.74.65, 13.249.74.17, 13.249.74.108, 195.110.124.154, 81.88.57.96, 74.208.106.209 |
| Historical Name Servers | ns-1422.awsdns-49.org, ns-149.awsdns-18.com, ns-1883.awsdns-43.co.uk, ns-865.awsdns-44.net |
| Hosting Changes         | 6 changes on 5 unique name servers over 3 years                                            |

### Registration

| Property | Value |
|----------|-------|
| Domain Age      | 79 days            |
| Created         | 29-06-2026         |
| Expires         | 29-06-2027         |
| Last Updated    | 19-08-2026         |
| Current Status  | Still accessible   |

### Observations

occupationoasis.com is the oldest domain in this cluster, registered on 29 June 2026 (79 days old) with a one-year registration expiring 29 June 2027. The domain was most recently updated on 19 August 2026, indicating active management. It remains accessible and has not received a Google warning, distinguishing it from the other domains in this set. The historical resolution data shows a migration from Amazon CloudFront IPs (18.154.101.x, 13.249.74.x) to other hosting providers (195.110.124.154, 81.88.57.96, 74.208.106.209), with AWS Route 53 name servers throughout. 

---

## linkroles.my

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | 22 July, 2026                                                                                                  |
| Last Observed           | 23 July, 2026                                                                                                  |
| Historical IPs          | 172.67.174.52, 104.21.30.243, 188.114.96.0, 188.114.97.0, 2606:4700:3032::6815:1ef3, 2606:4700:3037::ac43:ae34 |
| Historical Name Servers | alina.ns.cloudflare.com, bob.ns.cloudflare.com, leah.ns.cloudflare.com, micah.ns.cloudflare.com                |
| Hosting Changes         | 1 change on 2 unique name servers over 0 year                                                                  |

### Registration

| Property | Value |
|----------|-------|
| Domain Age      | XXXXX                                                                                                 |
| Created         | XXXXX                                                                                                  |
| Expires         | XXXXX |
| Last Updated    | XXXXX                |
| Current Status  | XXXXX                                                                  |

### Observations

Historical DNS data will be populated as evidence becomes available.

---

## unitelmatch.top

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | 23 July, 2026                                                                        |
| Last Observed           | 04 August, 2026                                                                      |
| Historical IPs          | 172.67.206.231, 104.21.22.200, 2606:4700:3032::ac43:cee7, 2606:4700:3035::6815:16c8  |
| Historical Name Servers | a.share-dns.com, b.share-dns.net                                                     |
| Hosting Changes         | 2 changes on 2 unique name servers over 0 year                                       |

### Registration

| Property | Value |
|----------|-------|
| Domain Age      | XXXXX                                                                                                 |
| Created         | XXXXX                                                                                                  |
| Expires         | XXXXX |
| Last Updated    | XXXXX                |
| Current Status  | XXXXX                                                                  |

### Observations

Investigation ongoing.

---

## unitelmatch.cc

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | 04 August, 2026                                                                       |
| Last Observed           | 04 August, 2026                                                                       |
| Historical IPs          | 172.67.171.54, 104.21.29.4, 2606:4700:3033::ac43:ab36, 2606:4700:3030::6815:1d04      |
| Historical Name Servers | alina.ns.cloudflare.com, dns.cloudflare.com, bob.ns.cloudflare.com                    |
| Hosting Changes         | 2 changes on 2 unique name servers over 0 year                                        |

### Registration

| Property | Value |
|----------|-------|
| Domain Age      | XXXXX                                                                                                 |
| Created         | XXXXX                                                                                                  |
| Expires         | XXXXX |
| Last Updated    | XXXXX                |
| Current Status  | XXXXX                                                                  |

### Observations

Investigation ongoing.

---


## unitelmatch.cyou

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | 04 August, 2026                                                                       |
| Last Observed           | 24 August, 2026                                                                       |
| Historical IPs          | 172.67.211.59, 104.21.45.78                                                           |
| Historical Name Servers | alina.ns.cloudflare.com, bob.ns.cloudflare.com                                        |
| Hosting Changes         | 2 changes on 2 unique name servers over 0 year                                        |

### Registration

| Property | Value |
|----------|-------|
| Domain Age      | XXXXX                                                                                                 |
| Created         | XXXXX                                                                                                  |
| Expires         | XXXXX |
| Last Updated    | XXXXX                |
| Current Status  | XXXXX                                                                  |

### Observations

Investigation ongoing.

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