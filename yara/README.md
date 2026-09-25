# YARA Rules

This directory contains YARA rules developed during the **Operation Phantom Store** investigation.

These rules are intended to detect frontend application artifacts associated with the phishing infrastructure identified throughout the investigation.

Unlike network-based detections (Sigma, Suricata, Splunk, or Microsoft Sentinel), YARA focuses on identifying characteristic application content within archived web resources, extracted JavaScript bundles, or filesystem artifacts.

---

# Purpose

The objectives of these rules are to:

- Detect archived phishing frontend code
- Identify reused application components
- Support malware and web artifact triage
- Assist retrospective investigations
- Complement network-based detections

---

# Available Rules

| Rule | Purpose |
|------|---------|
| `unitelmatch_frontend.yar` | Detects Vue.js frontend artifacts associated with the UnitelMatch phishing infrastructure. |

---

# Detection Strategy

The rules focus on persistent technical characteristics rather than domain names alone.

Observed indicators include:

- Vue.js application fingerprints
- Shared backend API paths
- Common JavaScript structures
- Merchant identifier (`merchant-id`)
- Backend domain references
- Cloudflare Browser Insights artifacts

This approach increases resilience against domain rotation while reducing dependence on rapidly changing infrastructure.

---

# Detection Logic

The current rule searches for combinations of:

## Vue.js fingerprints

```
__VUE__
__VUE_INSTANCE_SETTERS__
__VUE_SSR_SETTERS__
```

## Backend API paths

```
/tiny-shop/v1/
/site/config
/member/member/index
/shop/product/my-product
/index/index
```

## Backend Infrastructure

```
ioutrankap.cyou
merchant-id
```

## Supporting Libraries

```
core-js
lodash
static.cloudflareinsights.com
```

---

# Example Usage

Scan an extracted web directory:

```bash
yara unitelmatch_frontend.yar ./website/
```

Scan recursively:

```bash
yara -r unitelmatch_frontend.yar ./samples/
```

Scan a JavaScript bundle:

```bash
yara unitelmatch_frontend.yar index.js
```

---

# Intended Use

These rules are designed for:

- Incident Response
- Threat Hunting
- Digital Forensics
- Web Infrastructure Analysis
- Intelligence Validation
- Historical Dataset Analysis

---

# Limitations

These rules should not be considered standalone evidence of malicious activity.

Several detected technologies (e.g., Vue.js, Cloudflare, core-js, lodash) are commonly used by legitimate applications. The rules therefore rely on combinations of indicators to improve specificity.

Analysts should validate any matches using additional contextual evidence, including:

- Infrastructure correlation
- Backend communications
- Passive DNS
- Certificate analysis
- Threat intelligence

---

# Future Enhancements

Potential future improvements include:

- Additional frontend variants
- Backend API detection rules
- JavaScript obfuscation signatures
- Version-specific fingerprints
- Multi-rule campaign detection
- Automated IOC generation from YARA matches

---

# Related Content

This directory complements the following detection content included in the repository:

```
[Sigma/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection/Sigma)
[Splunk/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection/Splunk)
[Sentinel/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection/Sentinel)
[Suricata/](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/tree/main/Detection/Suricata)
```

Together these detections provide layered coverage across endpoint, network, SIEM, IDS, and artifact-based detection workflows.

---

# References

- [Application_Architecture.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Application_Architecture.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Operation Phantom Store Executive Report](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Executive_Report.pdf)

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store 