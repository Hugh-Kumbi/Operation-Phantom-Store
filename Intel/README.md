# Threat Intelligence Exports

## Overview

This directory contains structured Cyber Threat Intelligence (CTI) artefacts generated from the Operation Phantom Store investigation.

Unlike the narrative reports contained elsewhere in this repository, these files are designed for automated intelligence sharing between organizations.

The exports follow two widely adopted CTI standards:

- STIX 2.1
- MISP

These formats allow indicators, infrastructure, campaigns, and relationships to be imported into Threat Intelligence Platforms (TIPs), SIEMs, and SOC workflows.

---

## Contents

### STIX 2.1

Structured cyber threat intelligence objects.

Includes:

- Campaign
- Infrastructure
- Indicators
- Threat Actor
- Relationships

---

### MISP

Machine-readable event containing:

- Domains
- URLs
- IP addresses
- Infrastructure
- Tags
- MITRE ATT&CK references

---

## Investigation

Operation Phantom Store

Campaign Type:

Recruitment Fraud

Cryptocurrency Scam

Multi-Domain Infrastructure

Cloudflare-Protected Backend

Shared API Architecture

---

## Intelligence Confidence

Medium-High

Confidence is based on:

- Passive DNS
- WHOIS
- Certificate Transparency
- URLScan
- VirusTotal
- Browser Analysis
- Network Traffic
- Recruiter Interaction

---

## Related Documents

[Analysis/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Analysis)
[Detection/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection)
[docs/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/docs)


---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store