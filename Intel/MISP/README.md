# MISP Export

## Overview

This directory contains the MISP-compatible export generated during the **Operation Phantom Store** investigation.

The event represents the observable infrastructure, indicators, and relationships identified during the investigation and is intended for import into a MISP instance or other compatible Threat Intelligence Platform (TIP).

---

## Contents

| File | Description |
|------|-------------|
| `operation_phantom_store_event.json` | MISP event containing campaign indicators and associated metadata. |

---

## Included Intelligence

The MISP event includes observed and derived intelligence such as:

- Domains
- URLs
- IP addresses (where observed)
- Infrastructure
- Campaign metadata
- MITRE ATT&CK references
- Threat tags
- Confidence information

---

## Typical Use Cases

This export can be used for:

- IOC enrichment
- Threat hunting
- Correlation with existing events
- Intelligence sharing with trusted communities
- Import into MISP-compatible platforms

---

## Classification

**TLP:** CLEAR

**Confidence:** Medium–High

The included indicators were collected through passive OSINT techniques and direct observations during the investigation. Indicators should be validated before operational deployment, as campaign infrastructure may change over time.

---

## Related Resources

- [STIX/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/STIX) — STIX 2.1 intelligence objects
- [Navigator/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/Navigator) — MITRE ATT&CK Navigator layer
- [Attack_Graph.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/Attack_Graph.md) — Campaign attack graph
- [Analysis/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Analysis) — Analytical reports
- [OSINT/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/OSINT) — Technical collection and infrastructure analysis

---

## Document Information

**Last Updated:** September 2026
**Analyst:** Hugh Chanetsa
**Assessment Type:** OSINT / Cyber Threat Intelligence Investigatio
**GitHub:** https://github.com/Hugh-Kumbi/Operation-Phantom-Store