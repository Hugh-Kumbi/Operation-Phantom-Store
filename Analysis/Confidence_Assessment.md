# Confidence Assessment

**Case ID:** OSINT-2026-001

**Investigation Title:** Cyber Threat Intelligence Investigation into a Multi-Domain Recruitment Fraud Campaign 

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Version:** 2.0

---

# Objective

This document evaluates the confidence level associated with the findings presented throughout this investigation.

Confidence assessments distinguish between directly observed evidence and analytical judgments. They also identify assumptions, uncertainties, and limitations that may affect the overall reliability of the investigation.

The goal is to provide transparency regarding how conclusions were reached and where additional evidence would strengthen future assessments.

---

# Confidence Methodology

The following confidence scale is used throughout this investigation.

| Confidence | Definition |
|------------|------------|
| **High**   | Supported by multiple independent sources or direct observations with minimal uncertainty.               |
| **Medium** | Supported by credible evidence but includes analytical interpretation or unresolved uncertainties.       |
| **Low**    | Limited supporting evidence or conclusions based primarily on inference requiring additional validation. |

---

# Sources of Evidence

The investigation relied on multiple independent evidence sources, including:

- Recruiter conversations
- Analyst observations
- Website screenshots
- Browser security warnings
- WHOIS records
- DNS records
- Reverse DNS lookups
- Certificate Transparency logs
- Technology fingerprinting
- Public reputation services
- Passive OSINT
- URLScan
- VirusTotal
- BuiltWith
- Wappalyzer
- Censys
- Cloudflare observations
- Browser Developer Tools
- HTTP request analysis

No conclusions were based on a single unsupported source.

---

# Evidence Reliability

| Evidence Source | Reliability | Notes |
|-----------------|-------------|-------|
| Recruiter conversations       | High   | First-hand observations recorded during the investigation.               |
| Screenshots                   | High   | Captured directly by the investigator.                                   |
| DNS records                   | High   | Retrieved from authoritative public sources.                             |
| WHOIS records                 | High   | Public registry information.                                             |
| Certificate Transparency logs | High   | Independent certificate records.                                         |
| Technology fingerprinting     | Medium | Dependent on publicly observable characteristics.                        |
| Browser warning               | High   | Directly observed during the investigation.                              |
| Public reputation services    | Medium | May change over time and should be interpreted alongside other evidence. |

---

# Assessment of Major Findings

## Finding 1 — Multi-Domain Operational Workflow

### Assessment

The recruitment process involved five separate domains:

- `occupationoasis[.]com`
- `linkroles[.]my`
- `unitelmatch[.]top`
- `unitelmatch[.]cc`
- `unitelmatch[.]cyou`

### Supporting Evidence

- Recruiter instructions
- Platform screenshots
- DNS analysis
- WHOIS analysis
- Timeline reconstruction

### Confidence

**High**

### Rationale

The domains were directly observed during the investigation and independently verified through technical analysis.

---

## Finding 2 — Structured Recruiter-Led Onboarding

### Assessment

The recruiter followed a structured process designed to guide the investigator through account creation and platform onboarding.

### Supporting Evidence

- Conversation transcripts
- Timeline
- Screenshots
- Investigator notes

### Confidence

**High**

### Rationale

The investigator directly participated in the onboarding process and documented each stage.

---

## Finding 3 — Browser Warning Followed by Domain Migration

### Assessment

A browser warning for `linkroles[.]my` was immediately followed by recruiter instructions to continue using `unitelmatch[.]top`. Subsequent recruiter communications directed the transition to `unitelmatch[.]cc`, and later to `unitelmatch[.]cyou`, establishing a multi-stage domain migration chain.

### Supporting Evidence

- Browser warning (`linkroles[.]my`; `unitelmatch[.]top`; `unitelmatch[.]cc`; `unitelmatch[.]cyou`)
- Recruiter messages directing each domain transition
- Timeline of domain migration sequence
- Screenshots

### Confidence

**High**

### Rationale

The migration sequence was directly observed and recorded via recruiter chat instructions. The chain progressed as follows:

`linkroles[.]my` → `unitelmatch[.]top` → `unitelmatch[.]cc` → `unitelmatch[.]cyou`

The investigation does not infer why the migrations occurred beyond the observable evidence.

---

## Finding 4 — Cryptocurrency Introduced During Training

### Assessment

Cryptocurrency-related material formed part of the onboarding process.

### Supporting Evidence

- OKX Wallet interface
- Cryptocurrency screenshots
- Recruiter explanations

### Confidence

**High**

### Rationale

The investigator directly observed cryptocurrency-related content during training.

No financial participation occurred.

---

## Finding 5 — Use of Legitimate Cloud Infrastructure

### Assessment

The observed platforms relied on infrastructure provided by Amazon Web Services and Cloudflare.

### Supporting Evidence

- DNS analysis
- ASN lookup
- Certificate analysis
- Technology fingerprinting

### Confidence

**High**

### Rationale

Infrastructure ownership is directly supported by technical evidence.

However, the use of legitimate cloud services is not, by itself, evidence of malicious activity.

---

## Finding 6 — Shared Backend Infrastructure

### Assessment

Multiple frontend domains communicated with a common backend application.

### Supporting Evidence

- Shared API paths
- Shared backend
- merchant-id: 42
- Vue.js application fingerprints
- Cloudflare configuration
- Infrastructure analysis

### Confidence

**High**

### Rationale

The same backend architecture was observed across multiple domains despite domain rotation, indicating infrastructure reuse rather than independent deployments.

---

## Finding 7 — Infrastructure Rotation Strategy

### Assessment

Across the observed domain migration chain (`linkroles[.]my` → `unitelmatch[.]top` → `unitelmatch[.]cc` → `unitelmatch[.]cyou`), the underlying infrastructure remained consistent despite the front-end domain changes. The following elements were preserved across rotations:

- Backend infrastructure
- APIs
- JavaScript
- Cloudflare
- Certificates
- merchant-id

This indicates a deliberate infrastructure rotation strategy in which only the domain layer is changed, while the operational backend is reused.

### Supporting Evidence

- Domain migration chain (see Finding 3)
- Backend/API consistency across domains
- Reused JavaScript artifacts
- Cloudflare configuration overlap
- Certificate analysis
- merchant-id persistence

### Confidence

**High**

### Rationale

The preserved elements were directly observed and correlated across each domain in the migration chain. The consistency of backend, API, JavaScript, Cloudflare, certificate, and merchant-id indicators across otherwise distinct domains supports the assessment that domain rotation rather than full infrastructure replacement is the operational pattern.

The investigation does not infer the intent behind this strategy beyond the observable technical evidence.

---

## Finding 8 — Coordinated Campaign

### Assessment

The observed workflow appears coordinated across multiple domains and recruiter interactions.

### Supporting Evidence

- Timeline reconstruction
- Infrastructure analysis
- Recruiter communications
- Five distinct domains
- Shared backend
- Shared merchant-id
- Shared API
- Shared frontend
- Recruiter directing victims between domains

### Confidence

**High**

### Rationale

The workflow was consistent and structured. Confidence is assessed as High based on the convergence of multiple independent indicators:

- Five distinct domains were identified within the campaign.
- The same backend, merchant-id, API, and frontend were reused across those domains.
- The recruiter directed victims between domains as part of the workflow.

Taken together, these indicators demonstrate coordination at a level well beyond what would be expected from isolated or coincidental activity. This represents a significant strengthening from the original Medium assessment, which was based on a narrower evidence set.

However, the investigation observed only a single recruiter and cannot determine the size or organizational structure behind the campaign.

---

## Finding 9 — Threat Actor Attribution

### Assessment

The investigation cannot reliably attribute the campaign to a specific individual or organization.

### Supporting Evidence

Limited.

### Confidence

**Low**

### Rationale

The recruiter identity could not be independently verified.

Infrastructure alone is insufficient for attribution.

---

# Direct Observations vs Analytical Inference

## Direct Observations

The following findings were directly observed:

- Recruiter communications
- Platform registration
- Browser warning
- Domain migration
- Cryptocurrency demonstrations
- DNS records
- Certificate information
- WHOIS records
- Technology stack
- Infrastructure providers

Confidence:

**High**

---

## Analytical Inferences

The following assessments involve interpretation of the available evidence:

- Campaign coordination
- Operational maturity
- Use of staged social engineering
- Behavioral progression
- Detection opportunities
- Infrastructure relationships

Confidence:

**Medium**

---

## Unresolved Questions

The following areas remain unresolved:

- Recruiter identity
- Organizational structure
- Backend systems
- Cryptocurrency wallets
- Campaign scale
- Additional infrastructure

Confidence:

**Low**

---

# Potential Sources of Bias

The investigation considered the following potential biases:

## Observer Bias

The investigator participated directly in the onboarding process.

Mitigation:

Technical observations were independently verified wherever possible.

---

## Confirmation Bias

There was a possibility of interpreting observations to fit an expected outcome.

Mitigation:

Only evidence directly supported by screenshots, communications, or technical analysis was included.

No unsupported claims were made.

---

## Availability Bias

The investigation relied entirely on publicly accessible information and first-hand observations.

Mitigation:

Conclusions were limited to observable evidence.

---

# Investigation Limitations

This investigation did not include:

- Internal server logs
- Law enforcement intelligence
- Blockchain analytics
- Payment records
- Direct access to backend server infrastructure
- Server-side application source code
- Administrative interfaces
- Authentication databases
- Malware samples
- Source code
- Private infrastructure information

Consequently, attribution and campaign scope remain limited.

---

# Confidence by Analysis Area

| Analysis Area               | Confidence |
| --------------------------- | ---------- |
| Recruiter Communications    | High       |
| Timeline Reconstruction     | High       |
| Infrastructure Correlation  | High       |
| Backend Architecture        | High       |
| Passive DNS                 | High       |
| DNS Analysis                | High       |
| Certificate Analysis        | High       |
| Technology Stack            | High       |
| Domain Relationships        | High       |
| Social Engineering Analysis | High       |
| Detection Engineering       | High       |
| MITRE ATT&CK Mapping        | Medium     |
| Diamond Model               | Medium     |
| Campaign Attribution        | Low        |
| Threat Actor Attribution    | Low        |


---

# Confidence in Infrastructure Correlation

## Assessment:

High

## Supporting observations include:

- Shared backend API
- merchant-id: 42
- Vue.js SPA
- Cloudflare
- Common API paths
- Infrastructure migration
- Matching JavaScript behavior
- Common request patterns

This is one of the strongest conclusions of the investigation.

---

# Overall Confidence Assessment

The investigation's strongest conclusions relate to:

- Technical infrastructure
- Recruiter interactions
- Campaign chronology
- Domain relationships
- Social engineering workflow

These conclusions are supported by multiple independent evidence sources and direct investigator observations.

Conclusions regarding attribution, campaign scale, and organizational structure remain tentative due to the absence of corroborating evidence.

---

# Analytical Assessment

Overall confidence in the technical findings is **High**.

Confidence in behavioral assessments is **Medium**, reflecting the analytical interpretation required to connect individual observations into a coherent campaign narrative.

Confidence in attribution is **Low**, as the investigation intentionally avoided speculation beyond the available evidence.

This assessment reflects a fundamental principle of cyber threat intelligence: conclusions should be proportional to the quality and quantity of the available evidence.

---

# Related Documents

- [Application_Architecture.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Application_Architecture.md)
- [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Relationships.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Relationships.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Intelligence_Gaps.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Intelligence_Gaps.md)
- [Methodology.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Methodology.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)

---

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 2.0 | 2026-09-28 | Updated the assessment to reflect the expanded **Operation Phantom Store** investigation. Added findings for the `unitelmatch[.]cc` and `unitelmatch[.]cyou` domains, incorporated backend infrastructure correlation and domain rotation analysis, revised confidence levels based on additional evidence, updated supporting evidence sources, expanded related documentation, and aligned the document with Version 2.0 of the intelligence package. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
