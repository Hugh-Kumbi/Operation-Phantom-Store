# Findings

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Version:** 1.0

---

# Executive Summary

This investigation examined a remote recruitment workflow involving three publicly accessible domains:

- occupationoasis.com
- linkroles.my
- unitelmatch.top

The investigation combined Open Source Intelligence (OSINT), technical infrastructure analysis, behavioral analysis, and threat intelligence methodologies to document the observed campaign.

Evidence indicates a structured recruitment process involving recruiter-led onboarding, multiple web platforms, gradual user engagement, and the introduction of cryptocurrency-related activity during training.

No malware, exploit activity, credential theft, or technical compromise was observed during the investigation.

The findings therefore focus on social engineering, operational workflow, and infrastructure rather than post-compromise activity.

---

# Investigation Objectives

The investigation sought to:

- Document the recruitment workflow.
- Identify the technical infrastructure supporting the observed platforms.
- Analyze recruiter behavior and onboarding techniques.
- Map observed behaviors to established threat intelligence frameworks.
- Produce actionable intelligence for defenders and researchers.

---

# Summary of Investigation

The investigation began after the analyst applied for a remote employment opportunity through **occupationoasis.com**.

Following the application:

- A recruiter initiated contact.
- A structured conversation established rapport and discussed employment expectations.
- The analyst was introduced to an e-commerce dropshipping business model.
- The recruiter guided the analyst through platform registration.
- The onboarding process initially took place on **linkroles.my**.
- After a browser security warning, the recruiter directed the analyst to continue onboarding on **unitelmatch.top**.
- During training, cryptocurrency-related interfaces and OKX Wallet activity were observed.

Throughout the investigation, the analyst remained in an observational role, avoided financial participation, and did not provide sensitive personal information.

---

# Key Findings

## Finding 1: Campaign Infrastructure Expanded

Continued engagement with the recruiter identified two additional onboarding domains:

- unitelmatch.cc
- unitelmatch.cyou

These domains were introduced after the completion of the initial investigation and expanded the observed campaign infrastructure from three to five operational domains.

The newly identified domains continued the same recruiter-guided onboarding workflow previously documented within the investigation.

**Confidence:** High

---

## Finding 2: Browser Security Warning Triggered Platform Migration

When attempting to access **unitelmatch.cc**, the investigator observed a Google Safe Browsing warning indicating that the website may be dangerous.

The investigator reported the warning directly to the recruiter.

Rather than requesting that the warning be bypassed, the recruiter supplied an alternative onboarding portal for continued access.

This interaction was documented as part of the recruiter conversation.

**Evidence**

- ![Unitelmatch_CC_Google_Warning](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Browser_Warnings/unitelmatch.cc.png)
- ![Recruiter_Sends_Backup_Link](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png)

**Confidence:** High

---

## Finding 3: Recruiter Maintained Operational Continuity

Following notification of the browser warning, the recruiter:

- acknowledged the reported issue,
- stated that technical staff would investigate,
- supplied an alternative onboarding portal,
- encouraged continuation of the onboarding workflow.

These observations demonstrate operational continuity despite changes in web infrastructure.

The investigation documents these behaviors without attributing intent beyond the observed evidence.

**Evidence**

- [Recruiter_Explains_Warning.png](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-050-01.png)
- [Recruiter_Sends_Backup_Link.png](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-049-01.png)
- [Recruiter_States_Platform_Upgrade.png](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-051-01.png)

**Confidence:** High

---

## Finding 4: Progressive Infrastructure Evolution

Across both phases of the investigation, the recruiter introduced the following operational sequence:

1. occupationoasis.com
2. linkroles.my
3. unitelmatch.top
4. unitelmatch.cc
5. unitelmatch.cyou

Each domain fulfilled a similar onboarding function while preserving the overall workflow.

This progression demonstrates observable infrastructure evolution during the investigation period.

**Confidence:** High

---

## Finding 5 — Browser Warning and Platform Migration

During onboarding, Google displayed a browser warning for **linkroles.my**.

The recruiter immediately instructed the analyst to continue using **unitelmatch.top**.

This transition demonstrates operational continuity despite disruption.

The investigation documents the sequence of events but does not attribute a specific cause for the migration.

**Confidence:** High

---

## Finding 6 — Cryptocurrency in the Operational Workflow

During training, the analyst observed:

- OKX Wallet
- Cryptocurrency-related screenshots
- Apparent cryptocurrency transfer confirmations
- Customer support conversations referencing cryptocurrency

No cryptocurrency transactions were initiated by the analyst.

No wallet addresses or blockchain identifiers were collected.

**Confidence:** High

---

## Finding 7 — No Technical Compromise Observed

The investigation found no evidence of:

- Malware
- Phishing attachments
- Exploit delivery
- Credential theft
- Persistence mechanisms
- Command-and-control activity
- Privilege escalation
- Lateral movement

The observed workflow relied primarily on user interaction rather than technical exploitation.

**Confidence:** High

---

# Supporting Evidence

The findings are supported by:

- Recruiter communications
- Platform screenshots
- DNS analysis
- WHOIS analysis
- Certificate Transparency records
- Infrastructure analysis
- Technology fingerprinting
- Browser observations
- Cryptocurrency observations
- Timeline reconstruction

---

# Threat Intelligence Assessment

The investigation identified characteristics consistent with a coordinated recruitment workflow involving:

- Multiple operational domains
- Structured recruiter interaction
- Guided onboarding
- Domain migration
- Cloud-hosted infrastructure
- Cryptocurrency-related operational elements

The evidence supports an assessment that the campaign relied primarily on persuasion and user interaction.

No evidence was collected demonstrating malware deployment or exploitation of software vulnerabilities.

---

# MITRE ATT&CK Summary

Observed behaviors primarily aligned with the early stages of the ATT&CK lifecycle, including:

| Tactic | Observed |
|--------|----------|
| Resource Development | Yes              |
| Initial Access       | Yes              |
| User Execution       | Yes              |
| Credential Access    | Limited evidence |
| Persistence          | Limited evidence |
| Privilege Escalation | Not observed     |
| Defense Evasion      | Not observed     |
| Lateral Movement     | Not observed     |
| Collection           | Not observed     |
| Exfiltration         | Not observed     |
| Command and Control  | Not observed     |

---

# Diamond Model Summary

The investigation identified evidence across all four Diamond Model vertices:

| Vertex | Assessment |
|--------|------------|
| Adversary      | Recruiter-led onboarding observed; true identity unknown           |
| Infrastructure | Multiple domains hosted using AWS and Cloudflare                   |
| Capability     | Structured onboarding, social engineering, cryptocurrency workflow |
| Victim         | Remote job seeker engaged through a legitimate job application     |

---

# Detection Opportunities

The investigation identified several defensive opportunities, including:

- Monitoring access to newly registered domains.
- Correlating browser security warnings with subsequent domain access.
- Detecting transitions between multiple related domains.
- Monitoring recruitment workflows involving cryptocurrency services.
- Using behavioral analytics instead of relying solely on static indicators.

---

# Intelligence Gaps

Several important questions remain unanswered, including:

- True identity of the recruiter.
- Organizational structure.
- Backend platform architecture.
- Cryptocurrency wallet addresses.
- Campaign scale.
- Geographic targeting.
- Additional infrastructure.
- Payment processing implementation.

These gaps should be considered opportunities for future investigation rather than deficiencies in the current analysis.

---

# Overall Assessment

Based on the evidence collected, the investigation documented a coordinated recruitment workflow supported by multiple publicly accessible domains and legitimate cloud infrastructure.

The campaign relied primarily on structured social engineering techniques, gradual user engagement, and recruiter-guided onboarding.

Although cryptocurrency-related activity formed part of the observed workflow, no financial participation occurred during the investigation.

Likewise, no technical compromise, malware delivery, or exploitation activity was observed.

The assessment is therefore limited to the behaviors and infrastructure directly supported by collected evidence.

---

# Lessons for Defenders

Organizations should consider:

- Monitoring recently registered domains.
- Correlating browser security warnings with user behavior.
- Strengthening user awareness around remote recruitment.
- Verifying recruiter identities independently.
- Monitoring recruitment workflows that transition to cryptocurrency-related activity.
- Combining behavioral analytics with traditional threat intelligence.

---

# Conclusion

This investigation demonstrates how publicly available information, technical analysis, and structured intelligence methodologies can be combined to analyze a suspected online recruitment campaign without engaging in intrusive or unauthorized activity.

By documenting infrastructure, operational workflows, social engineering techniques, and detection opportunities, the investigation provides a repeatable methodology for analyzing similar campaigns in the future.

The resulting intelligence should be viewed as an evidence-based assessment rather than definitive attribution. Future investigations incorporating additional data sources may further refine these conclusions.

---

# Related Documents

- [Methodology.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Methodology.md)
- [Campaign_Overview.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Campaign_Overview.md)
- [Investigation_Timeline.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Technology_Stack.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Technology_Stack.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Intelligence_Gaps.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Intelligence_Gaps.md)
- [Lessons_Learned.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Lessons_Learned.md)

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     