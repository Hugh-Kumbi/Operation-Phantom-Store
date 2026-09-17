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
| First Observed          | 21 July, 2026 |
| Last Observed           | 17 July, 2026 |
| Historical IPs          | 18.154.101.74, 18.154.101.65, 18.154.101.49, 18.154.101.2, 13.249.74.87, 13.249.74.65, 13.249.74.17, 13.249.74.108, 195.110.124.154, 81.88.57.96, 74.208.106.209 |
| Historical Name Servers | NS-1422.AWSDNS-49.ORG, NS-149.AWSDNS-18.COM, NS-1883.AWSDNS-43.CO.UK, NS-865.AWSDNS-44.NET |
| Hosting Changes         | 6 changes on 5 unique name servers over 3 years |

### Observations

No historical DNS conclusions have been made pending additional evidence.

---

## linkroles.my

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | 22 July, 2026 |
| Last Observed           | Pending |
| Historical IPs          | Pending |
| Historical Name Servers | Pending |
| Hosting Changes         | Pending |

### Observations

Historical DNS data will be populated as evidence becomes available.

---

## unitelmatch.top

### Historical Resolution

| Property | Value |
|----------|-------|
| First Observed          | Pending |
| Last Observed           | Pending |
| Historical IPs          | Pending |
| Historical Name Servers | Pending |
| Hosting Changes         | Pending |

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