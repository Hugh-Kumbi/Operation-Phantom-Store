# Changelog

All notable changes to **Operation Phantom Store** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)
and this project follows Semantic Versioning (SemVer).

---

## [1.2.0] - 2026-08-24

### Added

#### New Campaign Infrastructure
- Added analysis for **unitelmatch.cc**
- Added analysis for **unitelmatch.cyou**
- Documented campaign migration from `.top` to `.cc` and `.cyou`
- Expanded campaign timeline to include infrastructure rotation
- Updated domain relationship mapping

#### Technical Analysis
- Added comprehensive DNS analysis
- Added Passive DNS observations
- Added Certificate Transparency analysis
- Added WHOIS analysis
- Added infrastructure evolution documentation
- Added technology stack analysis
- Added backend API relationship analysis
- Added cross-domain infrastructure correlation

#### Threat Intelligence
- Added new Indicators of Compromise (IoCs)
- Added STIX 2.1 intelligence objects
- Added MISP-compatible intelligence
- Added Sigma detection rules
- Added Splunk detection queries
- Added Microsoft Sentinel (KQL) detections
- Added Suricata IDS signatures

#### Intelligence Reporting
- Added Executive Report
- Added Campaign Evolution documentation
- Added Infrastructure Evolution analysis
- Added updated Diamond Model
- Added updated MITRE ATT&CK mapping
- Added updated Attack Lifecycle
- Added updated Detection Opportunities
- Added updated Findings
- Added updated Confidence Assessment

#### Documentation
- Updated README
- Updated Investigation Timeline
- Updated Campaign Overview
- Updated Evidence Register
- Added additional screenshots and supporting evidence

### Changed

- Renamed project to **Operation Phantom Store**
- Expanded investigation from three domains to five related domains
- Refined campaign attribution using additional infrastructure evidence
- Increased confidence in shared backend attribution through common API patterns and infrastructure reuse

### Security

- Confirmed infrastructure migration from:
  - occupationoasis.com
  - linkroles.my
  - unitelmatch.top
  - unitelmatch.cc
  - unitelmatch.cyou

- Confirmed shared backend infrastructure:
  - ioutrankap.cyou

- Confirmed continued use of:
  - Cloudflare CDN
  - Cloudflare WAF
  - Vue.js
  - Shared API endpoints
  - merchant-id: 42
  - Cryptocurrency payment workflow

---

## [1.1.0] - 2026-08-18

### Added

- Initial CTI investigation
- OSINT collection
- Infrastructure analysis
- WHOIS analysis
- Passive DNS
- Certificate Transparency
- Technology stack analysis
- MITRE ATT&CK mapping
- Diamond Model
- Detection Opportunities
- Findings
- Lessons Learned
- Confidence Assessment
- Initial IOC collection

### Changed

- Expanded campaign from initial observations into a structured CTI investigation.

---

## [1.0.0] - 2026-08-10

### Added

Initial public release.

Included:

- Occupation Oasis investigation
- LinkRoles investigation
- UnitelMatch.top investigation
- Recruiter interaction timeline
- Initial screenshots
- Initial Indicators of Compromise

---

## [2.0] - 2026-09-28

### Added

- Added analysis of `unitelmatch.cc` and `unitelmatch.cyou`.
- Expanded campaign timeline to document continued domain rotation.
- Added Application Architecture documentation.
- Added YARA detection rule and supporting documentation.
- Added machine-readable IOC feeds (CSV, JSON, TXT).
- Added STIX 2.1 and MISP intelligence exports.
- Added comprehensive PowerPoint presentation.
- Added professionally formatted Executive Report.
- Added infrastructure evolution analysis.
- Added campaign evolution documentation.

### Changed

- Renamed the project to **Operation Phantom Store**.
- Updated Campaign Overview to reflect the complete campaign lifecycle.
- Expanded Infrastructure Analysis with backend API correlation.
- Updated DNS, Passive DNS, Certificate, Reputation, and Domain analyses.
- Revised Findings to incorporate additional infrastructure and campaign evidence.
- Updated Indicators of Compromise with newly identified domains, IPs, certificates, and behavioral indicators.
- Enhanced Detection Opportunities with Sigma, Splunk, Microsoft Sentinel (KQL), and Suricata detections.
- Updated the Confidence Assessment to reflect the expanded evidence base and revised analytical confidence.
- Revised the Executive Report and presentation to align with the completed investigation.
- Updated `Executive_Summary.md` to Version 2.0. Reflected the transition from an active OSINT investigation to a completed CTI case study, expanded campaign coverage from three to five observed domains, incorporated backend infrastructure correlation, updated investigation scope and objectives, revised confidence and status sections, and synchronized the document with the final intelligence package.

### Security Intelligence

- Confirmed infrastructure reuse across multiple frontend domains.
- Identified consistent backend communications with `ioutrankap.cyou`.
- Confirmed shared `merchant-id: 42` across campaign infrastructure.
- Documented repeated use of Cloudflare proxying and short-lived TLS certificates.
- Correlated multiple domains into a single phishing infrastructure cluster using technical indicators rather than domain reputation alone.

### Documentation

- Standardized terminology and document structure across the repository.
- Added cross-references between OSINT, CTI, detection engineering, and reporting documents.
- Improved versioning and repository organization.

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     