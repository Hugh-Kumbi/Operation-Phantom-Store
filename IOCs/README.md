# Indicators of Compromise (IOCs)

## Overview

This directory contains machine-readable Indicators of Compromise (IOCs) identified during the Operation Phantom Store investigation.

The indicators were collected through passive OSINT techniques and technical analysis of the campaign infrastructure.

These files are intended to support:

- Threat Hunting
- SIEM enrichment
- EDR detection
- Firewall blocking
- IOC ingestion
- Threat Intelligence Platforms (TIPs)

---

## IOC Categories

- Domains
- URLs
- IPv4 addresses
- IPv6 addresses
- Name Servers
- Backend API Paths
- Certificate SHA256 Fingerprints
- Campaign-specific HTTP Headers

---

## Sources

Indicators were extracted from:

- Passive DNS
- WHOIS
- Certificate Transparency
- Browser Developer Tools
- URLScan
- VirusTotal
- Censys
- BuiltWith
- Wappalyzer

---

## Disclaimer

These indicators reflect infrastructure observed during the investigation.

Cloudflare IP addresses and shared infrastructure should not be blocked without additional context because they host legitimate services alongside malicious domains.

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store