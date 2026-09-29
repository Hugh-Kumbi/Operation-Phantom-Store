# Intelligence Artefacts

## Overview

This directory contains structured Cyber Threat Intelligence (CTI) artefacts generated during the **Operation Phantom Store** investigation.

Unlike the narrative reports located in the `Analysis`, `OSINT`, and `docs` directories, the contents of this folder are intended for intelligence sharing, visualization, and integration with external cybersecurity tools and workflows.

The artefacts include machine-readable intelligence formats, ATT&CK mappings, campaign visualizations, and executive intelligence summaries.

---

## Directory Structure

| Folder / File | Purpose |
|---------------|---------|
| `[Navigator/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/Navigator)` | MITRE ATT&CK Navigator layer and supporting visualizations. |
| `[STIX/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/STIX)` | STIX 2.1 cyber threat intelligence objects for structured intelligence sharing. |
| `[MISP/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Intel/MISP)`  | MISP event export containing indicators, infrastructure, and ATT&CK references. |
| `[Attack_Graph.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/Attack_Graph.md)` | Evidence-based attack graph documenting the relationships between the threat actor, infrastructure, and victim workflow. |
| `[Campaign_Profile.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/Campaign_Profile.md)` | Executive profile summarizing the campaign, objectives, infrastructure, and observed behaviours. |
| `[Threat_Summary.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/Threat_Summary.md)` | High-level intelligence summary of the investigation. |
| `[DISCLAIMER.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/DISCLAIMER.md)` | Scope, limitations, and intended use of the intelligence artefacts contained in this directory. |

---

## Intelligence Standards

This directory contains artefacts designed for use with widely adopted cyber threat intelligence standards and frameworks, including:

- MITRE ATT&CK Navigator
- STIX™ 2.1
- MISP

These formats enable campaign information to be imported into Threat Intelligence Platforms (TIPs), Security Information and Event Management (SIEM) platforms, and Security Operations Center (SOC) workflows.

---

## Investigation

**Operation Phantom Store**

### Campaign Characteristics

- Recruitment fraud
- Multi-domain infrastructure rotation
- Cloud-hosted web services
- Cloudflare-protected operational portals
- Social engineering
- Cryptocurrency-related onboarding
- Shared application architecture

---

## Intelligence Confidence

**Overall Confidence:** Medium–High

This assessment is supported by multiple independent sources and analytical techniques, including:

- Passive DNS
- WHOIS
- Certificate Transparency
- DNS analysis
- URLScan
- VirusTotal
- Browser observations
- Infrastructure analysis
- Technology fingerprinting
- Recruiter communications
- Platform interaction

---

## Related Documentation

The primary analytical reports are available in the following directories:

- `[Analysis/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Analysis)`
- `[OSINT/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/OSINT)`
- `[docs/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/docs)`

These reports provide the supporting evidence and analysis for the intelligence artefacts contained within this directory.

---

## Intended Use

The artefacts contained in this directory are intended for:

- Cyber Threat Intelligence (CTI)
- Threat Hunting
- Security Operations Centers (SOC)
- Detection Engineering
- Malware and Fraud Research
- Cybersecurity Education and Portfolio Demonstration

They should be considered supplementary to the full investigation reports and interpreted within the context provided by the accompanying documentation.

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store