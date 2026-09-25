# Application Architecture

**Case ID:** OSINT-2026-001

**Investigation Title:** Analysis of a Suspected Multi-Domain Remote Recruitment Platform

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Version:** 2.0

---

# Overview

The Operation Phantom Store campaign employs a modular web application architecture designed to separate the public-facing recruitment portals from the backend application responsible for business logic and user interactions.

Rather than hosting a complete application on each domain, multiple frontend portals serve as interchangeable entry points that communicate with a common backend API. This architecture allows operators to rapidly replace blocked or reported domains while preserving backend functionality.

---

# High-Level Architecture

```
                Victim Browser
                      │
                      ▼
        ┌─────────────────────────────┐
        │ Recruitment Portal          │
        │                             │
        │ occupationoasis.com         │
        │ linkroles.my                │
        │ unitelmatch.top             │
        │ unitelmatch.cc              │
        │ unitelmatch.cyou            │
        └──────────────┬──────────────┘
                       │
               HTTPS / HTTP3
                       │
                       ▼
          Cloudflare CDN + WAF Layer
                       │
                       ▼
          Vue.js Single Page Application
                       │
          JavaScript API Requests
                       │
                       ▼
        www.ioutrankap.cyou
           /tiny-shop/v1/
                       │
      ┌────────────────┴──────────────┐
      │                               │
 Member Services                Product Services
 Site Configuration             Store Management
 Authentication                 Campaign Logic
```

---

# Frontend Components

Observed frontend technologies include:

- Vue.js
- Single Page Application (SPA)
- JavaScript Modules
- Cloudflare Browser Insights
- HTTP/3
- Cloudflare CDN
- Responsive mobile interface

Each frontend domain exposes nearly identical application behavior despite different domain names.

---

# Shared Backend

Multiple domains communicate with the same backend infrastructure.

Observed backend:

```
www.ioutrankap.cyou
```

Observed API base path:

```
/tiny-shop/v1/
```

Observed endpoints include:

```
GET /site/config

GET /member/member/index

GET /shop/product/my-product

GET /index/index
```

---

# Authentication Pattern

Requests consistently contain the following application header:

```
merchant-id: 42
```

This identifier remained consistent across multiple domains and is one of the strongest technical correlation indicators identified during the investigation.

An additional header was observed:

```
x-api-key:
```

The value was empty in observed traffic.

---

# Infrastructure Characteristics

Common infrastructure characteristics include:

- Cloudflare CDN
- Cloudflare WAF
- Cloudflare DNS
- HTTP/3
- Google Trust Services certificates
- 300-second DNS TTL
- Full WHOIS privacy
- No MX records
- Automated certificate provisioning
- Vue.js frontend

---

# Architectural Strengths for the Threat Actor

The observed design provides several operational advantages:

- Rapid domain replacement
- Backend persistence
- Infrastructure reuse
- Simplified deployment
- Cloudflare origin concealment
- Reduced operational downtime after blocking

---

# Architectural Weaknesses

Despite rotating domains, the campaign exposes consistent characteristics that enable infrastructure correlation.

Examples include:

- Shared backend API
- Shared merchant-id value
- Shared JavaScript structure
- Identical API endpoints
- Common Cloudflare configuration
- Consistent frontend framework
- Repeated application fingerprint

These persistent characteristics provide stronger intelligence indicators than domain names alone.

---

# Analyst Assessment

Medium-confidence evidence indicates that multiple frontend domains function as interchangeable interfaces for a common backend application.

While infrastructure alone cannot attribute campaign ownership, the combination of:

- identical application behavior,
- shared backend communication,
- common API structure,
- shared merchant identifier,
- and repeated infrastructure characteristics

supports the assessment that these domains belong to the same operational campaign.

---

# Related Documents

- [Certificate_Analysis.md]()
- [Detection_Opportunities.md]()
- [DNS_Analysis.md]()
- [Domain_Relationships.md]()
- [Infrastructure_Analysis.md]()
- [Infrastructure_Evolution.md]()
- [Technology_Stack.md]()

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     