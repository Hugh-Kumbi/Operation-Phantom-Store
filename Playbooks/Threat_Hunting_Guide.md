# Threat Hunting Guide

## Hunting Hypotheses

### Hypothesis 1

Endpoints communicated with known campaign domains.

### Hypothesis 2

Users accessed recently registered Cloudflare-hosted recruitment portals.

### Hypothesis 3

Systems communicated with `www.ioutrankap.cyou`.

### Hypothesis 4

HTTP traffic contains requests to:

/tiny-shop/v1/

### Hypothesis 5

Traffic includes the header:

merchant-id: 42

---

## Recommended Data Sources

- DNS logs
- Proxy logs
- Firewall logs
- EDR telemetry
- Browser history
- Web gateway logs
- NetFlow
- TLS inspection logs

---

## High-Value Artifacts

- DNS queries
- Browser cache
- Cookies
- Downloads
- Developer Tools exports
- HAR files

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store