# Technology Stack Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Cyber Threat Intelligence Investigation into a Multi-Domain Recruitment Fraud Campaign

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Version:** 2.0

---

# Objective

This document identifies the publicly observable technologies, application frameworks, infrastructure components, and operational technologies associated with the domains analysed during Operation Phantom Store. 

The analysis combines passive website fingerprinting, infrastructure observations, and evidence collected during recruiter interactions to establish a defensible technical profile of the observed recruitment workflow. Only technologies directly observed during the investigation are documented; no conclusions are drawn regarding technologies that could not be verified through passive collection.

---

# Scope

Domains analyzed:

- `occupationoasis.com`
- `linkroles.my`
- `unitelmatch.top`
- `unitelmatch.cc`
- `unitelmatch.cyou`

Operational observations:

- Recruiter onboarding process
- Platform interactions
- Browser fingerprinting
- Screenshots
- Training session observations

---

# Collection Methodology

Technology identification was performed using publicly available and passive techniques, including:

- Wappalyzer
- BuiltWith
- Browser Developer Tools
- DNS Analysis
- Certificate Analysis
- Reverse DNS
- Manual platform observations
- Recruiter interactions
- URLScan
- Certificate Transparency

No authenticated administrative access or intrusive testing was performed.

---

# Application Technologies

## occupationoasis.com

### Web Framework

- Nuxt.js

### Static Site Generator

- Nuxt.js

### JavaScript Framework

- Vue.js
- Nuxt.js

### Analytics

- Google Analytics

### Tag Manager

- Google Tag Manager

### Performance Features

- Priority Hints

### Assessment

The website appears to be built using the Vue.js ecosystem through the Nuxt.js framework. No traditional Content Management System (CMS) was identified during the investigation.

---

## linkroles.my

### Automated Fingerprinting

No technologies were identified by Wappalyzer during the time of collection.

### Assessment

At the time of analysis, automated fingerprinting tools were unable to identify the application's technology stack.

This observation may reflect limitations of automated fingerprinting, Cloudflare protection mechanisms, dynamic content loading, or characteristics of the site's implementation. No conclusions are drawn from this observation.

---

## unitelmatch.top

### JavaScript Framework

- Vue.js

### Analytics

- Cloudflare Browser Insights

### Real User Monitoring (RUM)

- Cloudflare Browser Insights

### Miscellaneous

- HTTP/3
- QUIC

### Assessment

The application uses the Vue.js JavaScript framework together with Cloudflare Browser Insights for performance monitoring.

---

## unitelmatch.cc

### JavaScript Framework

- Vue.js

### Analytics

- Cloudflare Browser Insights

### Real User Monitoring (RUM)

- Cloudflare Browser Insights

### Miscellaneous

- HTTP/3
- QUIC

### Assessment

Publicly observable application characteristics were consistent with the previously analysed onboarding platforms. The application continued to expose a Vue.js-based frontend delivered through Cloudflare infrastructure.

---

## unitelmatch.cyou

### JavaScript Framework

- Vue.js

### Analytics

- Cloudflare Browser Insights

### Real User Monitoring (RUM)

- Cloudflare Browser Insights

### Miscellaneous

- HTTP/3
- QUIC

### Assessment

The backup onboarding portal exhibited technology characteristics consistent with previously observed domains. Similarities were identified through passive fingerprinting and infrastructure correlation.

---

# Infrastructure Technologies

## occupationoasis.com

Observed infrastructure technologies include:

| Technology | Observation |
|------------|-------------|
| Hosting Platform          | Amazon Web Services     |
| DNS                       | Amazon Route 53         |
| CDN                       | Amazon CloudFront       |
| Object Storage            | Amazon S3               |
| TLS Certificate Authority | AWS Certificate Manager |
| Certificate Protocol      | TLS 1.3                 |

### Assessment

The observed technology stack is consistent with a website deployed entirely within the Amazon Web Services ecosystem.

---

## linkroles.my

Observed infrastructure technologies include:

| Technology | Observation |
|------------|-------------|
| CDN                  | Cloudflare                         |
| DNS Provider         | Cloudflare                         |
| Certificate Provider | Google Trust Services / Cloudflare |

### Assessment

The website is protected behind Cloudflare infrastructure. The origin hosting environment could not be determined using passive techniques.

---

## unitelmatch.top

Observed infrastructure technologies include:

| Technology | Observation |
|------------|-------------|
| CDN                | Cloudflare                  |
| DNS Provider       | Cloudflare                  |
| Analytics          | Cloudflare Browser Insights |
| HTTP Protocol      | HTTP/3                      |
| Transport Protocol | QUIC                        |

### Assessment

The observed infrastructure indicates deployment behind Cloudflare's edge network with modern transport protocols enabled.

---

## unitelmatch.cc

Observed infrastructure technologies include:

| Technology | Observation |
|------------|-------------|
| CDN                | Cloudflare                  |
| DNS Provider       | Cloudflare                  |
| Analytics          | Cloudflare Browser Insights |
| HTTP Protocol      | HTTP/3                      |
| Transport Protocol | QUIC                        |

### Assessment

The observed infrastructure indicates deployment behind Cloudflare's edge network with modern transport protocols enabled.

---

## unitelmatch.cyou

Observed infrastructure technologies include:

| Technology | Observation |
|------------|-------------|
| CDN                | Cloudflare                  |
| DNS Provider       | Cloudflare                  |
| Analytics          | Cloudflare Browser Insights |
| HTTP Protocol      | HTTP/3                      |
| Transport Protocol | QUIC                        |

### Assessment

The observed infrastructure indicates deployment behind Cloudflare's edge network with modern transport protocols enabled.

---

# Content Management System (CMS)

No publicly identifiable Content Management System (CMS) was observed during the investigation.

The investigation did not identify evidence of common CMS platforms such as:

- WordPress
- Joomla
- Drupal
- Magento
- Shopify
- Wix
- Squarespace

This reflects only the technologies observable during collection and does not exclude the possibility of custom-built applications.

---

# Network Technologies

The following networking technologies were observed.

| Technology | Observation |
|------------|-------------|
| Amazon CloudFront | occupationoasis.com           |
| Cloudflare CDN    | linkroles.my, unitelmatch.top |
| Amazon Route 53   | occupationoasis.com           |
| Cloudflare DNS    | linkroles.my, unitelmatch.top |
| IPv6 Support      | linkroles.my, unitelmatch.top |
| TLS 1.3           | occupationoasis.com           |
| HTTP/3            | unitelmatch.top               |
| QUIC              | unitelmatch.top               |

---

# Authentication Technologies

No publicly observable authentication technologies were identified.

Examples not observed include:

- Microsoft Entra ID
- OAuth
- Auth0
- Okta
- SAML

Testing authenticated functionality was outside the scope of this investigation.

---

# Observed Financial Technologies

## Cryptocurrency

During the recruiter-led onboarding session, cryptocurrency-related activity was observed.

The investigator observed screenshots within a conversation labelled **"Customer Support"** that appeared to show cryptocurrency transfer confirmations.

The investigation documents only the presence of these screenshots and does not independently verify the transactions.

---

## OKX Wallet

During the training session, the recruiter appeared to access a OKX Wallet account while demonstrating the workflow.

The investigator observed the interface but did not interact with the account.

The observation documents the apparent use of OKX Wallet during the onboarding process and does not establish ownership of the account or the purpose of the transactions.

---

## Financial Workflow

The recruiter described a workflow involving:

- Online store management
- Order processing
- Commission-based earnings
- Daily settlements
- Cryptocurrency-related activity observed during training

The technical implementation of the payment process could not be independently verified.

---

# Operational Technologies

The following operational technologies were observed during recruiter interactions.

| Technology | Observation |
|------------|-------------|
| Recruiter Messaging Platform | Used throughout onboarding and communication         |
| Amazon Web Services          | Hosting infrastructure for occupationoasis.com       |
| Cloudflare                   | DNS and edge infrastructure for onboarding platforms |
| OKX Wallet                   | Observed during recruiter-led training               |
| Cryptocurrency               | Transfer screenshots observed during training        |

---

# Technology Comparison Matrix

| Technology | occupationoasis.com | linkroles.my | unitelmatch.top | unitelmatch.cc | unitelmatch.cyou |
|------------|---------------------|--------------|-----------------|----------------|------------------|
| Vue.js                      | ✓            | Not observed   | ✓               |   ✓                 |    ✓             |
| Nuxt.js                     | ✓            | Not observed   | Not observed    | Not observed         | Not observed     |
| Google Analytics            | ✓            | Not observed   | Not observed    | Not observed         | Not observed     |
| Google Tag Manager          | ✓            | Not observed   | Not observed    | Not observed         | Not observed     |
| Cloudflare Browser Insights | ✗            | Not observed   | ✓              |  ✓                    |  ✓              |
| AWS Certificate Manager     | ✓            | ✗              | ✗              |  ✗                   |   ✗             |
| Amazon CloudFront           | ✓            | ✗              | ✗              |  ✗                   |   ✗             |
| Amazon S3                   | ✓            | ✗              | ✗              |  ✗                   |  ✗              |
| Cloudflare CDN              | ✗            | ✓              | ✓              | ✓                    |  ✓              |
| HTTP/3                      | Not observed | Not observed    | ✓              | ✓                    | ✓               |
| QUIC                        | Not observed | Not observed    | ✓              |  ✓                   | ✓               |
| TLS 1.3                     | ✓            | Not identified  | Not identified |  Not identified      | Not identified  |
| CMS Identified              | No           | No              | No             |     No               |   No             |

---

# Technology Assessment

The investigation identified two distinct technology environments supporting the observed recruitment workflow: a public-facing recruitment platform and a series of operational onboarding portals.

## Recruitment Infrastructure

The initial recruitment website (`occupationoasis.com`) was hosted within the Amazon Web Services (AWS) ecosystem and employed a modern Vue.js/Nuxt.js application architecture.

Observed supporting technologies included:

- Amazon Route 53
- Amazon CloudFront
- Amazon S3
- AWS Certificate Manager
- Google Analytics
- Google Tag Manager
- TLS 1.3

The infrastructure and application design were consistent with a professionally developed cloud-hosted web application. No publicly observable indicators suggested the use of a traditional Content Management System (CMS).

---

## Operational Infrastructure

The onboarding platforms (`linkroles.my`, `unitelmatch.top`, `unitelmatch.cc`, and `unitelmatch.cyou`) consistently relied on Cloudflare services for DNS resolution, content delivery, and edge protection.

Passive fingerprinting identified recurring technical characteristics across the operational domains, including:

- Vue.js-based frontend applications
- Cloudflare CDN and DNS services
- HTTP/3 and QUIC support (where observable)
- Modern TLS configurations
- Consistent application behaviour across successive domains

Although automated fingerprinting produced different levels of visibility for individual domains, the overall technology profile remained consistent throughout the infrastructure evolution documented elsewhere in this investigation.

---

## Observed Operational Workflow

During recruiter-led onboarding sessions, the investigator additionally observed operational technologies associated with the recruitment workflow, including:

- Cryptocurrency-related activity
- Apparent use of the OKX Wallet platform
- Screenshots depicting cryptocurrency transfer confirmations within a "Customer Support" conversation
- Recruiter-guided transitions between replacement onboarding portals

These observations form part of the documented operational workflow and are included as contextual evidence. They do not, on their own, establish ownership, intent, or the legitimacy of any financial activity.

Overall, the technology assessment indicates that while the public recruitment website and operational onboarding platforms differed in their hosting environments, the onboarding portals maintained a consistent application architecture and technology profile throughout the observed infrastructure evolution.

---

# Key Observations

The following observations are directly supported by evidence collected during the investigation:

1. `occupationoasis.com` employed a modern Vue.js/Nuxt.js application hosted within the Amazon Web Services ecosystem, incorporating CloudFront, Route 53, Amazon S3, and AWS Certificate Manager.

2. The operational onboarding portals (`linkroles.my`, `unitelmatch.top`, `unitelmatch.cc`, and `unitelmatch.cyou`) consistently relied on Cloudflare infrastructure for DNS services, content delivery, and edge protection.

3. Multiple operational domains exhibited recurring application characteristics, including Vue.js-based frontends, modern TLS configurations, and similar deployment patterns, supporting the documented infrastructure evolution.

4. Automated fingerprinting produced varying levels of visibility across domains. Where technologies could not be positively identified, no conclusions were drawn beyond the limitations of passive collection techniques.

5. No publicly identifiable Content Management System (CMS) was observed on any of the analysed domains during the investigation.

6. Recruiter-led onboarding included observable cryptocurrency-related activity, apparent use of the OKX Wallet platform, and screenshots depicting cryptocurrency transfer confirmations. These observations are documented as contextual evidence only and are not independently verified.

7. The consistent technology profile observed across successive onboarding portals complements the infrastructure correlation, domain relationship, and application architecture analyses presented elsewhere in this investigation.

These observations describe technologies and behaviours directly observed during the investigation. They should be interpreted alongside the supporting infrastructure, application architecture, and behavioural analyses rather than as standalone indicators of malicious activity.

---

# Confidence Assessment

| Finding | Confidence |
|---------|------------|
| AWS technology stack identified for occupationoasis.com                              | High   |
| Cloudflare infrastructure identified for linkroles.my                                | High   |
| Cloudflare infrastructure identified for unitelmatch.top                             | High   |
| Vue.js identified on occupationoasis.com                                             | High   |
| Vue.js identified on unitelmatch.top                                                 | High   |
| No identifiable CMS observed                                                         | Medium |
| Cryptocurrency-related activity observed during training                             | High   |
| OKX Wallet interface observed during training                                        | High   |
| unitelmatch.cc shares technology characteristics with earlier onboarding platforms   | High   |
| unitelmatch.cyou shares technology characteristics with earlier onboarding platforms | High   |

---

# Evidence

| Evidence ID | Description |
|-------------|-------------|
| [EV-003-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-01.png), [EV-003-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-02.png), [EV-003-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-03.png), [EV-003-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-04.png), [EV-003-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-05.png), [EV-003-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-06.png), [EV-003-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-07.png), [EV-003-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-08.png), [EV-003-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-09.png), [EV-003-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-10.png), [EV-003-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-11.png), [EV-003-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-12.png), [EV-003-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-13.png), [EV-003-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-14.png), [EV-003-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-15.png), [EV-003-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-16.png), [EV-003-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-17.png), [EV-003-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-003-18.png) | Job explanation |
| [EV-028-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-01.png), [EV-028-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-02.png), [EV-028-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-03.png), [EV-028-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-028-04.png) | Wappalyzer results – occupationoasis.com |
| [EV-029-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-01.png), [EV-029-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-02.png), [EV-029-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-029-03.png) | Technology stack analysis – `linkroles.my` |
| [EV-030-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-01.png), [EV-030-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-02.png), [EV-030-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-030-03.png) | Technology stack analysis – `unitelmatch.top`  |
| [EV-031-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-01.png), [EV-031-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-02.png), [EV-031-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-03.png) | Technology stack analysis – `unitelmatch.cc`  |
| [EV-031-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-04.png), [EV-031-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-05.png), [EV-031-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-06.png) | Technology stack analysis – `unitelmatch.cyou` |
| [EV-031-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-07.png), [EV-031-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-08.png), [EV-031-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-09.png), [EV-031-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-031-10.png) | Technology stack analysis – `ioutrankap.cyou` |
| [EV-032-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-01.png), [EV-032-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-02.png), [EV-032-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-03.png), [EV-032-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-04.png), [EV-032-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-05.png) | DNS Analysis – `occupationoasis.com` |
| [EV-032-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-06.png), [EV-032-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-07.png), [EV-032-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-08.png), [EV-032-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-09.png) | DNS Analysis – `linkroles.my` |
| [EV-032-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-10.png), [EV-032-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-11.png), [EV-032-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-12.png) | DNS Analysis – `unitelmatch.top` |
| [EV-032-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-13.png), [EV-032-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-14.png), [EV-032-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-15.png) | Domain research and passive DNS reconnaissance | DNS Analysis – `unitelmatch.cc` | Collected | 
| [EV-032-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-16.png) [EV-032-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-17.png) [EV-032-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-18.png), [EV-032-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-19.png) | DNS Analysis – `unitelmatch.cyou` |
| [EV-032-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-20.png), [EV-032-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-21.png), [EV-032-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-032-22.png) | DNS Analysis – `ioutrankap.cyou` |
| [EV-033-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-01.png), [EV-033-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-02.png) | Censys Certificate Analysis – `occupationoasis.com` |
| [EV-033-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-03.png), [EV-033-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-04.png), [EV-033-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-05.png), [EV-033-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-06.png), [EV-033-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-07.png) | Censys Certificate Analysis – `linkroles.my` |
| [EV-033-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-08.png), [EV-033-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-09.png), [EV-033-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-10.png), [EV-033-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-11.png), [EV-033-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-12.png) | Censys Certificate Analysis – `unitelmatch.top` |
|  [EV-033-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-13.png) [EV-033-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-14.png),  [EV-033-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-15.png),  [EV-033-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-16.png), [EV-033-17](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-17.png) | Censys Certificate Analysis – `unitelmatch.cc` |
| [EV-033-18](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-18.png), [EV-033-19](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-19.png), [EV-033-20](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-20.png), [EV-033-21](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-21.png), [EV-033-22](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-22.png) | Censys Certificate Analysis – `unitelmatch.cyou` |
| [EV-033-24](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-24.png), [EV-033-25](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-25.png), [EV-033-26](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-26.png), [EV-033-27](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-27.png),  [EV-033-28](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-28.png),  [EV-033-29](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-29.png),  [EV-033-30](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-30.png),  [EV-033-31](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-31.png), [EV-033-32](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-32.png), [EV-033-33](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-33.png), [EV-033-34](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-34.png), [EV-033-35](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-35.png), [EV-033-36](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-36.png), [EV-033-37](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-37.png), [EV-033-38](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-38.png), [EV-033-39](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-39.png), [EV-033-40](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-40.png), [EV-033-41](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-41.png), [EV-033-42](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-42.png), [EV-033-43](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-43.png), [EV-033-44](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-44.png), [EV-033-45](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-45.png), [EV-033-46](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-46.png), [EV-033-47](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-47.png), [EV-033-48](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-48.png), [EV-033-49](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-033-49.png) | Censys Certificate Analysis – `ioutrankap.cyou` |
| [EV-034-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-01.png), [EV-034-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-02.png), [EV-034-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-03.png)  | VirusTotal Relation Results – `occupationoasis.com` |
| [EV-034-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-04.png), [EV-034-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-05.png)  | VirusTotal Relation Results – `linkroles.my` |
| [EV-034-06](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-06.png), [EV-034-07](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-07.png)  | VirusTotal Relation Results – `unitelmatch.top` |
| [EV-034-08](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-08.png), [EV-034-09](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-09.png)  | VirusTotal Relation Results – `unitelmatch.cc` |
| [EV-034-10](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-10.png), [EV-034-11](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-11.png)  | VirusTotal Relation Results – `unitelmatch.cyou` |
| [EV-034-12](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-12.png), [EV-034-13](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-13.png), [EV-034-14](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-14.png), [EV-034-15](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-15.png), [EV-034-16](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-034-16.png) | VirusTotal Relation Results – `ioutrankap.cyou` |
| [EV-035-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-035-01.png), [EV-035-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-035-02.png), [EV-035-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-035-03.png), [EV-035-04](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-035-04.png), [EV-035-05](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-035-05.png) | Multi-chain, self-custodial digital asset wallet |
| [EV-036-01](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-01.png), [EV-036-02](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-02.png), [EV-036-03](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/EV-036-03.png) | Multi-chain, self-custodial digital asset wallet |

---

# Related Documents

- [Application_Architecture.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Application_Architecture.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Infrastructure_Evolution.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Evolution.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)

---

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 1.0 | 2026-08-27 | Initial investigation methodology created. |
| 2.0 | 2026-09-28 | Expanded analysis from three to five observed domains; added technology profiles for unitelmatch.cc and unitelmatch.cyou; updated technology comparison matrix; documented observed financial technologies and recruiter workflow; added evidence and confidence sections; aligned terminology with the Operation Phantom Store repository; and updated related documents and metadata. |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
