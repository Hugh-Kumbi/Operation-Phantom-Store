# Threat Summary

## Overview

Operation Phantom Store is a multi-domain recruitment campaign that combines social engineering with rapidly changing web infrastructure.

Victims are introduced to a legitimate-looking recruitment portal before being redirected to operational portals that share backend infrastructure and common application characteristics.

---

## Key Findings

Five related domains were identified.

One shared backend API.

Identical merchant identifier.

Consistent application framework.

Repeated infrastructure migration.

Recruiter-directed domain rotation.

---

## Primary Risk

Victims may be persuaded to participate in fraudulent financial activity through trusted recruiter interactions.

---

## Infrastructure Confidence

High

The observed domains exhibit:

- Shared backend
- Shared APIs
- Shared technologies
- Shared DNS providers
- Shared certificates
- Shared operational behaviour

---

## Recommended Defensive Actions

- Block known domains.
- Monitor DNS activity.
- Monitor connections to ioutrankap.cyou.
- Detect merchant-id header.
- Monitor newly registered Cloudflare-hosted domains with similar characteristics.

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store