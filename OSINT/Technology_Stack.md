# Technology Stack Analysis

**Case ID:** OSINT-2026-001

**Investigation Title:** Cyber Threat Intelligence Investigation into a Multi-Domain Recruitment Fraud Campaign

**Classification:** Open Source Intelligence (OSINT) / Cyber Threat Intelligence (CTI)

**Status:** Investigation Complete

**Version:** 2.0

---

# Objective

This document identifies the technologies observed during the investigation, including publicly visible web technologies, infrastructure components, and operational technologies encountered during recruiter interactions.

The objective is to establish a technical profile of the infrastructure supporting the observed recruitment workflow while distinguishing between evidence collected from website fingerprinting and observations made during the investigation.

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

The investigation identified two distinct technology environments.

## Recruitment Website

The initial recruitment website (`occupationoasis.com`) is hosted within the Amazon Web Services ecosystem and uses a modern Vue.js/Nuxt.js application architecture.

Observed supporting technologies include:

- Amazon Route 53
- Amazon CloudFront
- Amazon S3
- Google Analytics
- Google Tag Manager
- AWS Certificate Manager

---

## Operational Platforms

The onboarding platforms (`linkroles.my` and `unitelmatch.top`) are protected by Cloudflare infrastructure.

While `unitelmatch.top` exposed a Vue.js application and Cloudflare Browser Insights, `linkroles.my` could not be fingerprinted using automated tools during the investigation.

---

## Operational Workflow

During recruiter-led onboarding, the analyst additionally observed:

- Cryptocurrency-related activity
- Apparent use of OKX Wallet
- Screenshots depicting cryptocurrency transfers within a "Customer Support" conversation

These observations are documented as part of the operational workflow and are not sufficient, on their own, to determine the purpose or legitimacy of the transactions.

---

# Key Observations

The following observations are supported by the evidence collected:

1. `occupationoasis.com` employs a modern Vue.js/Nuxt.js application hosted entirely within Amazon Web Services.

2. `linkroles.my` and `unitelmatch.top` rely on Cloudflare for DNS and edge infrastructure.

3. `unitelmatch.top` exposes a Vue.js application and Cloudflare Browser Insights, while `linkroles.my` could not be fingerprinted by Wappalyzer during collection.

4. No publicly identifiable Content Management System (CMS) was observed for any of the three domains.

5. Recruiter interactions included observable cryptocurrency-related activity and apparent use of the OKX Wallet platform as part of the onboarding workflow.

These observations describe technologies visible during the investigation and should not be interpreted as indicators of malicious activity without additional corroborating evidence.

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

# Confidence Assessment

| Finding | Confidence |
|---------|------------|
| AWS technology stack identified for occupationoasis.com  | High   |
| Cloudflare infrastructure identified for linkroles.my    | High   |
| Cloudflare infrastructure identified for unitelmatch.top | High   |
| Vue.js identified on occupationoasis.com                 | High   |
| Vue.js identified on unitelmatch.top                     | High   |
| No identifiable CMS observed                             | Medium |
| Cryptocurrency-related activity observed during training | High   |
| OKX Wallet interface observed during training            | High   |

---

# Related Documents

- [Domain_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Domain_Analysis.md)
- [Passive_DNS.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Passive_DNS.md)
- [DNS_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/DNS_Analysis.md)
- [Certificate_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Certificate_Analysis.md)
- [Infrastructure_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Infrastructure_Analysis.md)
- [Reputation_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/OSINT/Reputation_Analysis.md)
- [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)

---

# Change Log

| Version | Date | Change |
|---------|------|--------|
| 1.0 | 2026-08-27 | Initial investigation methodology created. |
| 2.0 | Xxxx |

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     
