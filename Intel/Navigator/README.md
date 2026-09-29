# MITRE ATT&CK Navigator

## Overview

This directory contains the MITRE ATT&CK® Navigator layer created during the **Operation Phantom Store** investigation.

The Navigator layer maps observed campaign behaviors to the MITRE ATT&CK Enterprise framework and provides a visual representation of the techniques identified throughout the investigation.

The mapping is evidence-based and derived solely from behaviors documented during the investigation. It should not be interpreted as proof of malicious intent beyond the observed activities.

---

## Contents

| File | Description |
|------|-------------|
| `ATTACK_Navigator.json`             | MITRE ATT&CK Navigator layer containing mapped techniques and confidence-based color coding. |
| `Attack_Navigator.png`              | Rendered screenshot of the Navigator layer for quick viewing without importing the JSON.     |

---

## Mapped ATT&CK Techniques

The Navigator layer currently includes the following techniques:

| ATT&CK ID | Technique |
|-----------|-----------|
| T1583.001 | Acquire Infrastructure: Domains                   |
| T1583.006 | Acquire Infrastructure: Web Services              |
| T1566     | Phishing                                          |
| T1656     | Impersonation                                     |
| T1204     | User Execution                                    |
| T1078     | Valid Accounts *(Potential)*                      |
| T1056     | Input Capture *(Potential Credential Collection)* |

---

## Color Coding

The layer uses confidence-based colouring to distinguish directly observed techniques from analytical assessments.

| Confidence | Meaning |
|------------|---------|
| **High**   | Directly supported by collected evidence.                 |
| **Medium** | Analytical mapping based on observed behaviour.           |
| **Low**    | Potential applicability with limited supporting evidence. |

---

## Viewing the Navigator Layer

### MITRE ATT&CK Navigator

1. Open the MITRE ATT&CK Navigator:

   https://mitre-attack.github.io/attack-navigator/

2. Select **Open Existing Layer**.

3. Import `ATTACK_Navigator.json`.

The Navigator will display the mapped techniques using the colours defined in the layer.

---

## Investigation Context

The mapped techniques represent behaviours observed during a suspected recruitment fraud campaign involving:

- Multi-domain infrastructure rotation
- Recruiter-led social engineering
- Cloud-hosted onboarding platforms
- Browser warning-driven domain migration
- Cryptocurrency-related onboarding activities

No evidence was identified for:

- Malware deployment
- Privilege escalation
- Persistence
- Lateral movement
- Command-and-control communications
- Data exfiltration

Accordingly, later-stage ATT&CK tactics are intentionally absent from the layer.

---

## Related Documents

- [Attack_Graph.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Intel/Attack_Graph.md)
- [Diamond_Model.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Diamond_Model.md)
- [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [MITRE_ATT&CK_Mapping.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/MITRE_ATT%26CK_Mapping.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)

---

## References

- MITRE ATT&CK® Enterprise Framework  
  https://attack.mitre.org/

- MITRE ATT&CK Navigator  
  https://mitre-attack.github.io/attack-navigator/

---

## Document Information

**Last Updated:** September 2026
**Analyst:** Hugh Chanetsa
**Assessment Type:** OSINT Investigation
**Repository:** https://github.com/Hugh-Kumbi/Operation-Phantom-Store