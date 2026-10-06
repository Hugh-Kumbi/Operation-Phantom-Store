# Methodology

**Case ID:** OSINT-2026-001

**Investigation Title:** Cyber Threat Intelligence Investigation into a Multi-Domain Recruitment Fraud Campaign

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Version:** 2.0

---

# Purpose

This document describes the methodology used throughout the investigation.

The objective of establishing a documented methodology is to ensure that evidence collection, analysis, reporting, and conclusions are performed in a consistent, repeatable, and evidence-based manner.

The methodology combines industry-recognized cybersecurity investigation practices with passive Open Source Intelligence (OSINT) techniques appropriate for publicly accessible information.

The methodology evolved throughout the investigation as additional infrastructure was identified and correlated. While the investigation began as a passive OSINT assessment of a single recruitment website, it expanded into a structured Cyber Threat Intelligence (CTI) case study documenting a multi-domain campaign exhibiting consistent infrastructure, application architecture, and operational behavior.

---

# Investigation Principles

The investigation was conducted according to the following principles:

- Evidence before conclusion
- Passive information gathering
- Repeatable methodology
- Documentation of every significant action
- Clear separation of facts, observations, assessments, and hypotheses
- Respect for legal and ethical boundaries
- Protection of personal information through redaction where appropriate
- Reproducibility of analytical findings
- Correlation across multiple independent data sources
- Separation of observable evidence from analytical assessment
- Traceability from findings to supporting evidence

No conclusions are presented unless supported by collected evidence.

---

# Scope

The investigation focuses on the collection, preservation, and analysis of publicly observable artifacts associated with a suspected multi-domain recruitment campaign. The scope includes infrastructure analysis, application fingerprinting, backend correlation, social engineering observations, and production of intelligence products suitable for defensive use.

Activities included:

- Publicly available information
- Passive OSINT
- Voluntary interactions initiated by the recruiter
- Technical observations of publicly accessible web resources
- Recruiter communication analysis
- Website observation
- Domain intelligence
- Infrastructure analysis
- Passive reputation analysis
- Website technology identification
- Social engineering assessment
- Certificate Transparency analysis

Analysis & Outputs included:

- Detection engineering
- IOC development
- STIX 2.1 modelling
- MISP intelligence sharing

The investigation excludes:

- Unauthorized access
- Authentication bypass
- Exploitation of vulnerabilities
- Malware execution
- Active network scanning against third-party infrastructure
- Service disruption
- Credential attacks

---

# Investigation Lifecycle

The investigation followed the lifecycle below.

```text
Case Initiation
        │
        ▼
Evidence Preservation
        │
        ▼
Recruiter Communication Analysis
        │
        ▼
Infrastructure Discovery
        │
        ▼
Passive DNS Collection
        │
        ▼
DNS Analysis
        │
        ▼
Certificate Analysis
        │
        ▼
Application Architecture Analysis
        │
        ▼
Infrastructure Correlation
        │
        ▼
Threat Intelligence Analysis
        │
        ▼
Detection Engineering
        │
        ▼
IOC Production
        │
        ▼
Reporting
```

---

# Phase 1 – Case Initiation

The investigation began after the investigator applied for a remote position advertised through the Occupation Oasis recruitment platform.

A case file was created to document:

- Investigation scope
- Objectives
- Evidence
- Findings
- Timeline

Every subsequent activity was recorded within the investigation log.

---

# Phase 2 – Evidence Preservation

Evidence was preserved immediately upon collection whenever possible.

Examples include:

- Recruiter communications
- Screenshots
- Registration URLs
- Onboarding instructions
- WHOIS results
- DNS records
- Browser observations

Evidence was assigned unique identifiers to maintain traceability throughout the investigation.

Example:

| Evidence ID | Description |
|-------------|-------------|
| [EV-001-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-01.png), [EV-001-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-02.png), [EV-001-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-03.png), [EV-001-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-001-04.png) | Occupation Oasis job advertisement |
| [EV-002-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-002-01.png) | Initial recruiter communication |
| [EV-009-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-009-01.png) | Registration website – `linkroles[.]my` |
| [EV-012-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-01.png), [EV-012-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-02.png), [EV-012-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-012-03.png) | Google Safe Browsing warnings |

---

# Phase 3 – Open Source Intelligence Collection

Passive OSINT techniques were used to collect publicly available information relating to the identified infrastructure.

Information sources included:

- WHOIS
- DNS records
- Certificate Transparency logs
- Passive DNS
- VirusTotal
- URLScan
- Google Safe Browsing
- Wappalyzer
- BuiltWith
- Censys
- Shodan 

No authenticated access to third-party systems was attempted.

---

# Phase 4 – Infrastructure Analysis

Each identified domain was analyzed independently.

Areas examined included:

- Registration details
- Registrar
- Domain age
- Hosting provider
- DNS configuration
- TLS certificates
- Technology stack
- Publicly visible infrastructure

Changes in infrastructure over time were documented separately to establish an operational timeline.

---

# Phase 5 – Infrastructure Correlation

Infrastructure artifacts collected from each domain were compared to identify shared characteristics.

Correlation included:

- Cloudflare name servers
- Hosting providers
- TLS certificate issuance patterns
- Application fingerprints
- Shared JavaScript bundles
- Shared backend API
- Merchant identifier
- API endpoint structure

This phase enabled the identification of multiple domains operating as components of a single infrastructure cluster rather than independent websites.

---

# Phase 6 – Social Engineering Analysis

Recruiter communications were analyzed to identify recurring themes and techniques observed during the recruitment process.

The analysis focused on:

- Recruitment workflow
- Trust-building techniques
- Financial incentives
- Onboarding process
- Identity verification requests
- Platform transitions

Descriptions are limited to observed behaviors and do not infer intent without supporting evidence.

---

# Phase 7 – Risk Assessment

Each finding was evaluated using a qualitative risk model based on:

- Likelihood
- Potential impact
- Supporting evidence
- Confidence level

Risk assessments are intended to assist readers in prioritizing areas for further investigation rather than to provide definitive conclusions.

---

# Phase 8 – Detection Engineering

Technical artifacts identified during the investigation were translated into defensive detection content.

Detection artifacts include:

- Sigma rules
- Microsoft Sentinel (KQL)
- Splunk SPL
- Suricata IDS signatures

The purpose of these detections is to enable identification of similar infrastructure and behaviors within enterprise environments.

---

# Phase 9 – Threat Intelligence Production

Structured intelligence products were generated to facilitate information sharing.

Outputs include:

- STIX 2.1 bundle
- MISP event
- IOC feeds (CSV, JSON, TXT)
- Executive report
- PowerPoint presentation
- CTI documentation

---

# Analytical Standards

Throughout the investigation, information is categorized using the following terminology.

## Verified Fact

Information directly supported by collected evidence.

Examples include:

- URLs
- Screenshots
- WHOIS records
- Recruiter messages

---

## Observation

An event personally witnessed during the investigation.

Example:

> The investigator observed a Google Safe Browsing warning when attempting to access the onboarding platform.

---

## Assessment

An analytical interpretation derived from one or more verified facts.

Assessments are clearly identified and include a confidence rating.

---

## Hypothesis

A possible explanation that has not yet been verified.

Hypotheses are presented separately from findings and require additional evidence before being accepted.

---

# Confidence Rating

Each assessment is assigned a confidence level.

| Confidence | Definition |
|------------|------------|
| High   | Supported by multiple independent sources or direct evidence collected during the investigation. |
| Medium | Supported by limited evidence or a combination of observations and OSINT results.                |
| Low    | Preliminary assessment requiring additional corroboration.                                       |

Confidence reflects the strength of the available evidence, not the severity of the finding.

---

# Evidence Handling

Evidence integrity is maintained through:

- Unique evidence identifiers
- Chronological documentation
- Preservation of original screenshots where possible
- Separation of original evidence from analytical notes
- Clear references between findings and supporting evidence

Personally identifiable information unrelated to the investigation is redacted before publication.

---

# Limitations

This investigation has several limitations.

- Only publicly accessible information was collected.
- Infrastructure may change over time.
- WHOIS records may use privacy protection services.
- Reputation services may not reflect real-time changes.
- No access to internal systems or proprietary records was available.

Accordingly, the investigation should be viewed as a point-in-time assessment based on the evidence available during the investigation period.

---

# Ethical Considerations

This investigation was conducted in accordance with responsible cybersecurity research practices.

The investigator did not:

- Attempt unauthorized access
- Exploit vulnerabilities
- Interfere with services
- Impersonate third parties
- Collect unnecessary personal information

The purpose of this investigation is educational, analytical, and professional, demonstrating structured OSINT and threat intelligence techniques.

---

# References

This methodology is informed by publicly available cybersecurity guidance, including:

- NIST Special Publication 800-61 Rev. 2 – *Computer Security Incident Handling Guide*
- NIST Special Publication 800-86        – *Guide to Integrating Forensic Techniques into Incident Response*
- MITRE ATT&CK Framework
- MITRE ATT&CK Enterprise Matrix
- MITRE CTI Best Practices
- Diamond Model of Intrusion Analysis
- OSINT best practices for passive intelligence collection
- STIX™ Version 2.1 Specification (OASIS)
- MISP Project Documentation
- Sigma Rule Specification

These references informed the investigation approach but were adapted to fit the scope of a passive, evidence-based OSINT case study.

---

# Related Documents

The methodology described in this document is implemented throughout the repository and is supported by the following analyses:

- [Application_Architecture.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Application_Architecture.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Confidence_Assessment.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Executive_Summary.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Executive_Summary.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 1.0 | 2026-08-11 | Initial investigation methodology created. |
| 2.0 | 2026-09-28 |  Updated methodology to align with the completed Operation Phantom Store investigation. Added infrastructure correlation, application architecture analysis, detection engineering, threat intelligence production, expanded lifecycle, updated references, and related document cross-references. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     