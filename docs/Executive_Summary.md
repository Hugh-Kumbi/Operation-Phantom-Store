# Executive Summary

**Case ID:** OSINT-2026-001

**Investigation Title:** Cyber Threat Intelligence Investigation into a Multi-Domain Recruitment Fraud Campaign

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Author:** Hugh Chanetsa

**Version:** 2.0

---

# Executive Summary

This report documents Operation Phantom Store, a Cyber Threat Intelligence (CTI) investigation into a multi-domain recruitment fraud campaign encountered during a legitimate job application process.

Throughout the investigation, the campaign evolved across multiple web domains while maintaining consistent technical characteristics, including shared backend infrastructure, identical application architecture, and recurring operational patterns. The investigation combined first-hand observations with Open Source Intelligence (OSINT), passive infrastructure analysis, certificate transparency analysis, DNS correlation, technology fingerprinting, and social engineering analysis to document the campaign and produce evidence-based intelligence products.

The investigation identified five related domains (`occupationoasis[.]com`, `linkroles[.]my`, `unitelmatch[.]top`, `unitelmatch[.]cc`, and `unitelmatch[.]cyou`) and correlated them through shared backend infrastructure, API behavior, application fingerprints, and hosting characteristics.

All findings are derived from publicly available information and direct investigator observations. No unauthorized access, exploitation, or interference with the investigated infrastructure was performed.

## Key Assessment

The investigation identified a coordinated recruitment fraud campaign that rotated public-facing domains while maintaining a consistent technical architecture. Multiple domains shared backend communications, application fingerprints, and infrastructure characteristics, providing high confidence that they were operated as part of the same campaign. Although the investigation does not attribute the activity to a specific threat actor, the evidence strongly supports the assessment of a coordinated infrastructure cluster employing domain rotation, social engineering, and cryptocurrency-enabled onboarding to sustain operations.

---

# Investigation Objectives

The objectives of this investigation are to:

1. Preserve all recruiter communications and digital evidence.
2. Document the recruitment workflow from first contact through onboarding.
3. Identify and analyze all domains involved in the process.
4. Collect publicly available intelligence regarding the identified infrastructure.
5. Assess the observed social engineering techniques.
6. Produce a professional threat intelligence case study suitable for educational and portfolio purposes.
7. Develop reusable detection content for SOC and Threat Hunting teams.
8. Produce machine-readable threat intelligence suitable for STIX 2.1 and MISP.

---

# Scope

This investigation is limited to:

- Publicly available information
- Passive OSINT
- Voluntary interactions initiated by the recruiter
- Technical observations of publicly accessible web resources
- Certificate Transparency analysis
- Detection engineering
- IOC development
- STIX 2.1 modelling
- MISP intelligence sharing

The investigation excludes:

- Unauthorized access
- Vulnerability exploitation
- Credential attacks
- Malware execution
- Service disruption

---

# Key Findings (Current)

The following findings are based on evidence collected at the time of writing:

- Five domains were observed during the investigation:
  - `occupationoasis[.]com`
  - `linkroles[.]my`
  - `unitelmatch[.]top`
  - `unitelmatch[.]cc`
  - `unitelmatch[.]cyou`

- Infrastructure correlation demonstrated:
  - Shared backend architecture
  - Shared API endpoints
  - Shared merchant-id: `42`
  - Shared Vue.js application
  - Shared Cloudflare configuration
  - Consistent domain rotation strategy

- The campaign evolved through successive frontend domains while preserving backend functionality, suggesting deliberate infrastructure rotation rather than independent deployments.
- Multiple technical and behavioral indicators support treating the observed domains as components of a single infrastructure cluster.
- The operational platform changed during the investigation after the investigator encountered a Google Safe Browsing warning on the original portal.
- Requests for account creation and identity verification were observed during onboarding.
- WHOIS records indicate that the domains were registered recently relative to the investigation period.
- Multiple pieces of evidence have been preserved, including recruiter communications, screenshots, URLs, and registration information.

These findings describe observed events only. They do not, by themselves, establish malicious intent or fraudulent activity.

---

# Current Investigation Status

| Investigation Area           | Status   |
| ---------------------------- | -------- |
| Evidence Collection          | Complete |
| Domain Analysis              | Complete |
| Infrastructure Analysis      | Complete |
| DNS Analysis                 | Complete |
| Certificate Analysis         | Complete |
| Reputation Analysis          | Complete |
| Detection Engineering        | Complete |
| Threat Intelligence Analysis | Complete |
| Executive Report             | Complete |

---

# Confidence Statement

This report distinguishes between:

- **Verified Facts** – Supported directly by collected evidence.
- **Observations**   – Events witnessed during the investigation.
- **Assessments**    – Analytical interpretations based on available evidence.
- **Hypotheses**     – Clearly identified possibilities requiring further corroboration.

Confidence ratings are assigned to individual findings throughout the investigation.

---

# Intended Audience

This report is intended for:

- SOC Analysts
- Threat Intelligence Analysts
- Incident Responders
- DFIR Analysts
- Security Engineers
- Threat Hunters
- Cybersecurity Recruiters
- Hiring Managers
- Security Researchers
- Students learning structured CTI investigations

---

# Intelligence Products Produced

This investigation produced:

- Executive Report
- PowerPoint Presentation
- MITRE ATT&CK Mapping
- Diamond Model
- Attack Lifecycle
- Detection Rules
- IOC Feeds
- STIX 2.1 Bundle
- MISP Event
- Infrastructure Analysis
- Certificate Analysis
- DNS Analysis
- Application Architecture
- Evidence Register
- Executive Presentation

---

# Document History

| Version | Date | Description |
|---------|------|-------------|
| 1.0     | 2026-08-03 | Initial executive summary |
| 2.0     | 2026-09-28 | Updated to reflect the completed Operation Phantom Store investigation. Expanded to include five correlated campaign domains, infrastructure correlation, backend architecture analysis, detection engineering outputs, threat intelligence products, and final investigation status. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     