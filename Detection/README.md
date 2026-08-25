# Detection Content

## Overview

This directory contains detection artefacts derived from the investigation.

These rules and indicators are intended to assist SOC analysts, DFIR teams, and threat hunters in identifying infrastructure associated with the campaign.

The detection content is based solely on technical observations documented throughout this repository.

---

# Contents

## Sigma

Generic SIEM detection rules.

Supported platforms include:

- Microsoft Sentinel
- Splunk
- Elastic
- QRadar
- Chronicle

---

## Suricata

Network IDS rules.

Detects:

- Known domains
- Backend API access
- Suspicious HTTP headers
- Shared API paths

---

## YARA

Application fingerprinting.

Designed to identify frontend JavaScript characteristics observed across the campaign.

---

## IOC Lists

Machine-readable indicators.

Includes:

- Domains
- URLs
- IP addresses
- Certificates
- API paths

---

# Related Documents

- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store