# Operation Phantom Store

> **Analysis of a Suspected Multi-Domain Recruitment Campaign**

A structured Open Source Intelligence (OSINT) and Cyber Threat Intelligence (CTI) investigation into a recruiter-led online campaign that evolved across multiple web domains. The investigation combines passive OSINT collection, infrastructure analysis, behavioral analysis, and threat intelligence methodologies to document the campaign and identify defensive opportunities.

---

**Case ID:** OSINT-2026-001  
**Project Type:** Cyber Threat Intelligence (CTI) Case Study  
**Version:** 1.1  
**Status:** Complete (Version 1.1)

---

![Version](https://img.shields.io/badge/version-1.1-blue)
![Status](https://img.shields.io/badge/status-Complete-success)
![OSINT](https://img.shields.io/badge/OSINT-Investigation-green)
![CTI](https://img.shields.io/badge/Cyber%20Threat%20Intelligence-Case%20Study-red)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

---

# Overview

This repository documents an end-to-end cyber threat intelligence investigation into a suspected online recruitment campaign encountered during a real-world job application process.

Rather than immediately disengaging, I conducted a structured, evidence-driven investigation using passive Open Source Intelligence (OSINT) techniques, behavioral analysis, and established Cyber Threat Intelligence (CTI) methodologies.

The investigation focused on documenting recruiter interactions, analyzing technical infrastructure, identifying recurring behavioral patterns, and developing defensive recommendations without engaging in intrusive or unauthorized activity.

As the investigation progressed, additional infrastructure was identified and incorporated into **Version 1.1**, expanding the documented campaign from three to five operational domains.

---

# Investigation Objectives

The objectives of this investigation were to:

- Document the recruiter-led onboarding process.
- Identify and analyze campaign infrastructure.
- Perform passive OSINT collection.
- Correlate technical and behavioral observations.
- Apply structured intelligence frameworks.
- Identify Indicators of Compromise (IOCs).
- Develop detection opportunities for defenders.
- Produce professional intelligence reporting.

---

# Skills Demonstrated

## Open Source Intelligence (OSINT)

- DNS Analysis
- Passive DNS
- WHOIS Analysis
- Reverse DNS
- Certificate Transparency
- SSL Certificate Analysis
- Technology Fingerprinting
- Infrastructure Analysis
- Domain Correlation
- Reputation Analysis

---

## Cyber Threat Intelligence (CTI)

- Intelligence Lifecycle
- Campaign Analysis
- Behavioral Analysis
- Social Engineering Assessment
- Infrastructure Correlation
- Confidence Assessment
- Intelligence Gap Analysis
- Structured Reporting

---

## Detection Engineering

- Indicator Development
- Detection Opportunities
- Defensive Recommendations
- ATT&CK Mapping
- Threat Hunting Concepts

---

## Security Operations

- Threat Analysis
- IOC Documentation
- Timeline Reconstruction
- Evidence Management
- Technical Documentation

---

# Campaign Overview

The investigation identified five operational domains introduced throughout recruiter-led onboarding.

| Domain | Observed Purpose | Status |
|--------|------------------|--------|
| occupationoasis.com | Recruitment platform          | Observed                           |
| linkroles.my        | Initial onboarding portal     | Replaced                           |
| unitelmatch.top     | Replacement onboarding portal | Replaced                           |
| unitelmatch.cc      | Upgraded onboarding portal    | Replaced following browser warning |
| unitelmatch.cyou    | Backup onboarding portal      | Active during investigation        |

---

# Campaign Progression

```text
Job Advertisement
        │
        ▼
occupationoasis.com
        │
        ▼
Recruiter Contact
        │
        ▼
linkroles.my
        │
        ▼
Google Safe Browsing Warning
        │
        ▼
unitelmatch.top
        │
        ▼
Additional Training
        │
Google Safe Browsing Warning
        │
        ▼
unitelmatch.cc
        │
 Google Safe Browsing Warning
        │
        ▼
unitelmatch.cyou
```

---

# Repository Structure

```text
Operation-Phantom-Store/
│
├── README.md
├── CHANGELOG.md
├── DISCLAIMER.md
├── LICENSE
│
├── Analysis/
│   ├── Attack_Lifecycle.md
│   ├── Confidence_Assessment.md
│   ├── Detection_Opportunities.md
│   ├── Diamond_Model.md
│   ├── Indicators_of_Compromise.md
│   ├── Intelligence_Gaps.md
│   ├── MITRE_ATT&CK_Mapping.md
│   └── Social_Engineering_Analysis.md
│
├── Assets/
│   ├── Application_Architecture.png
│   ├── Attack_Lifecycle.png
│   ├── Campaign_Infrastructure.png
│   ├── Campaign_Lifecycle.png
│   ├── Campaign_Overview.png
│   ├── Certificate_Timeline.png
│   ├── Diamond_Model.png
│   ├── Domain_Relationships.png
│   ├── Infrastructure_Model.png
│   ├── Infrastructure_Relationship.png
│   ├── Investigation_Timeline.png
│   ├── IOC_Timeline.png
│   ├── MITRE_ATT&CK_Matrix.png
│   ├── Reputation_Timeline.png
│   └── Timeline_Diagram.png
│
├── Detection/
│   ├── DISCLAIMER.md
│   ├── README.md
│   ├── IOCs/
│   │   ├── api_endpoints.txt
│   │   ├── certificates.txt
│   │   ├── domains.txt
│   │   ├── ips.txt
│   │   └── urls.txt
│   ├── Sentinel/
│   │   ├── OPS-001_Domain.kql
│   │   ├── OPS-002_Backend.kql
│   │   └── OPS-003_IOCs.kql
│   ├── Sigma/
│   │   ├── OPS-001_Domain_Access.yml
│   │   ├── OPS-002_Backend_API_Access.yml
│   │   ├── OPS-003_Merchant42_Header.yml
│   │   ├── OPS-004_Newly_Registered_Cloudflare_Domains.yml
│   │   └── OPS-005_Recruitment_Campaign_Domains.yml
│   ├── Splunk/
│   │   ├── OPS-001_Domain_Search.spl
│   │   ├── OPS-002_API_Search.spl
│   │   └── OPS-003_IOC_Search.spl
│   └── Suricata/
│       ├── OPS-001_Domains.rules
│       ├── OPS-002_Backend.rules
│       └── OPS-003_API.rules
│
├── docs/
│   ├── Campaign_Overview.md
│   ├── Evidence_Register.md
│   ├── Executive_Report.docx        
│   ├── Executive_Summary.md         
│   ├── Findings.md
│   ├── Investigation_Timeline.md
│   ├── Lessons_Learned.md
│   └── Methodology.md
│
├── Evidence/
│   ├── Browser_Warnings/
│   │   ├── linkroles.my.png
│   │   ├── unitelmatch.cc.png
│   │   └── unitelmatch.top.png
│   ├── Recruiter_Communications/
│   │   ├── COMM-001_Recruiter_Communication_Initial_Contact.md
│   │   ├── COMM-002_Recruiter_Communication_Onboarding.md
│   │   ├── COMM-003_Recruiter_Communication_Platform_Migration.md
│   │   ├── COMM-004_Recruiter_Communication_Operational_Training.md
│   │   ├── COMM-005_Recruiter_Communication_Financial_Escalation.md
│   │   ├── COMM-006_Recruiter_Communication_Campaign_Closure.md
│   │   ├── Conversation_Index.md
│   │   ├── README.md
│   │   └── Recruiter_Chat_Transcript.md
│   └── Screenshots/
│       ├── README.md
│       ├── CTI-2026-07_*.png          (≈120 screenshots)
│       ├── EV-001-01.png … EV-077-07.png
│       └── Screenshot (2175).png      ← stray file, consider renaming
│
├── Intel/
│   ├── Attack_Graph.md
│   ├── Campaign_Profile.md
│   ├── DISCLAIMER.md
│   ├── README.md
│   ├── Threat_Summary.md
│   ├── MISP/
│   │   ├── operation_phantom_store_event.json
│   │   └── README.md
│   ├── Navigator/
│   │   └── ATTACK_Navigator.json
│   └── STIX/
│       ├── bundle.json
│       ├── campaign.json
│       ├── indicators.json
│       ├── infrastructure.json
│       ├── relationships.json
│       └── threat_actor.json
│
├── IOCs/
│   ├── api_endpoints.txt
│   ├── certificates.txt
│   ├── certificates_sha256.txt
│   ├── domains.txt
│   ├── iocs.csv
│   ├── iocs.json
│   ├── ips.txt
│   ├── ipv4.txt
│   ├── ipv6.txt
│   ├── merchant_ids.txt
│   ├── nameservers.txt
│   ├── README.md
│   └── urls.txt
│
├── OSINT/
│   ├── Application_Architecture.md
│   ├── Certificate_Analysis.md
│   ├── DNS_Analysis.md
│   ├── Domain_Analysis.md
│   ├── Domain_Relationships.md
│   ├── Infrastructure_Analysis.md
│   ├── Infrastructure_Evolution.md
│   ├── Passive_DNS.md
│   ├── Reputation_Analysis.md
│   └── Technology_Stack.md
│
└── Playbooks/
    ├── Executive_Incident_Brief.md
    ├── Incident_Response_Playbook.md
    ├── IOC_Response_Checklist.md
    ├── README.md
    ├── SOC_Runbook.md
    └── Threat_Hunting_Guide.md
```

---

# Methodology

The investigation followed a structured intelligence lifecycle.

1. Evidence Collection
2. Passive OSINT Collection
3. Infrastructure Analysis
4. Behavioral Analysis
5. Threat Intelligence Mapping
6. IOC Development
7. Detection Engineering
8. Reporting

Only passive intelligence collection methods were used.

No unauthorized access, exploitation, credential harvesting, or intrusive scanning was performed.

---

# Intelligence Frameworks Applied

- MITRE ATT&CK
- Diamond Model of Intrusion Analysis
- Cyber Threat Intelligence Lifecycle
- Attack Lifecycle Analysis

These frameworks were used to organize observations and support evidence-based analytical assessments.

---

# Key Findings

The investigation identified:

- A structured recruiter-led onboarding process.
- Progressive trust-building through staged interactions.
- Five operational domains introduced throughout the campaign.
- Repeated migration to replacement domains following browser security warnings.
- Use of commercial cloud infrastructure (AWS and Cloudflare).
- Modern JavaScript frameworks (Vue.js and Nuxt.js).
- Valid SSL certificates from trusted Certificate Authorities.
- Cryptocurrency-related activity observed during later onboarding stages.
- No malware delivery or technical exploitation observed.
- A campaign primarily driven by social engineering techniques.

---

# Defensive Recommendations

Organizations should consider monitoring for:

- Newly registered onboarding domains.
- Repeated domain migration during user onboarding.
- Recruiters encouraging users to ignore browser security warnings.
- Cryptocurrency requests during employment onboarding.
- Repeated infrastructure changes associated with recruitment workflows.

---

# Ethical Statement

This investigation was conducted exclusively for educational, research, and defensive cybersecurity purposes.

All observations were obtained through passive OSINT techniques and voluntary recruiter communications.

No unauthorized access, exploitation, or interference with any systems occurred during the investigation.

---

# Future Work

Potential future enhancements include:

- Continuous Certificate Transparency monitoring.
- Passive DNS historical analysis.
- Infrastructure relationship visualization.
- Blockchain analytics.
- Sigma rule development.
- SIEM detection content.
- Infrastructure monitoring for newly observed domains.

---

# Disclaimer

This repository documents an evidence-based investigation of a suspected online recruitment campaign.

The inclusion of any domain, IP address, infrastructure provider, or technology does **not** imply malicious ownership or intent. Observations and analytical assessments are based solely on information collected during the investigation and publicly available data.

No attribution is made beyond what is supported by documented evidence.

---

# License

This project is licensed under the MIT License unless otherwise stated.

---

# Author

**Hugh Chanetsa**

Cybersecurity Professional

Specializing in:

- Security Operations (SOC)
- Threat Detection
- Vulnerability Management
- Active Directory Security
- Incident Response
- Threat Intelligence
- Open Source Intelligence (OSINT)

### Certifications

- ISC² Certified in Cybersecurity (CC)
- Google Cybersecurity Professional Certificate
- CompTIA Security+ (In Progress)

---

## Portfolio

This repository forms part of a broader cybersecurity portfolio demonstrating practical, hands-on investigations and security research.

Future updates will include additional evidence, findings, and technical analysis as the investigation progresses.
