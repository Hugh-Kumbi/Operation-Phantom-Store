# STIX 2.1 Intelligence Objects

## Overview

This directory contains Structured Threat Information Expression (STIX™) 2.1 objects generated from the **Operation Phantom Store** investigation.

The objects model the campaign using the OASIS STIX 2.1 standard, allowing the investigation to be shared with Threat Intelligence Platforms (TIPs), Security Operations Centers (SOCs), and other tools that support structured cyber threat intelligence.

Unlike the narrative reports contained elsewhere in this repository, these files represent machine-readable intelligence objects that describe entities and relationships observed during the investigation.

---

## Contents

| File | Description |
|------|-------------|
| [`bundle.json`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/STIX/bundle.json)         | Combined STIX bundle containing all objects in a single file. |
| [`campaign.json`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/STIX/campaign.json)       | Describes the observed recruitment fraud campaign. |
| [`indicators.json`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/STIX/indicators.json)     | Contains indicators derived from publicly observed infrastructure. |
| [`infrastructure.json`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/STIX/infrastructure.json) | Documents the observed infrastructure, including recruitment and onboarding domains. |
| [`relationships.json`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/STIX/relationships.json)  | Defines relationships between STIX objects (campaign, infrastructure, indicators, and threat actor). |
| [`threat_actor.json`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/STIX/threat_actor.json)   | Represents the unidentified threat actor associated with the campaign. |


---

## STIX Objects Included

The exported dataset includes the following STIX Domain Objects (SDOs):

- Campaign
- Threat Actor
- Infrastructure
- Indicator
- Relationship

These objects represent information directly supported by evidence collected during the investigation.

---

## Intended Use

These STIX objects may be imported into platforms that support STIX 2.1, including:

- OpenCTI
- MISP (via conversion)
- Threat Intelligence Platforms (TIPs)
- SOAR platforms
- Custom CTI workflows
- Security research environments

The objects are intended for intelligence sharing, threat enrichment, and analytical reference.

---

## Investigation Summary

**Campaign:** Operation Phantom Store

Observed characteristics include:

- Multi-domain recruitment workflow
- Recruiter-led social engineering
- Domain rotation during onboarding
- Cloud-hosted infrastructure
- Cryptocurrency-related onboarding activity
- No observed malware or exploitation

---

## Scope and Limitations

The exported objects are derived from:

- Passive DNS
- WHOIS records
- Certificate Transparency
- Technology fingerprinting
- Recruiter communications
- Browser observations
- Infrastructure analysis

The investigation **did not** identify evidence of:

- Malware deployment
- Command-and-control infrastructure
- Privilege escalation
- Lateral movement
- Data exfiltration

Accordingly, no STIX objects relating to malware, attack patterns, vulnerabilities, or observed data were created.

---

## Intelligence Confidence

| Category | Confidence |
|----------|------------|
| Infrastructure | High |
| Campaign Relationships   | High   |
| Indicators               | High   |
| Threat Actor Attribution | Low    |
| Operational Intent       | Medium |

---

## Related Directories

| Directory | Purpose |
|-----------|---------|
| [`Analysis`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Analysis)        | Detailed CTI analysis reports                      | 
| [`Detection`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection)       | Detection engineering artefacts                    |
| [`MISP`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/MISP)      | MISP event export                                  |
| [`Navigator`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/Navigator) | MITRE ATT&CK Navigator layer                       |
| [`docs`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/docs)            | Investigation reports and supporting documentation |

---

## Standards

This export follows:

- STIX™ Version 2.1
- OASIS Open Cyber Threat Intelligence (CTI) Technical Committee specifications
- MITRE ATT&CK terminology where applicable

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store    