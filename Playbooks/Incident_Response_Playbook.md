# Incident Response Playbook

## Objective

Provide a structured response procedure for suspected exposure to infrastructure associated with Operation Phantom Store.

---

# Preparation

Ensure:

- DNS logging is enabled.
- Proxy logs are retained.
- EDR telemetry is available.
- Browser telemetry is collected.
- Threat intelligence feeds are current.

---

# Identification

Investigate alerts involving:

- Known campaign domains.
- Connections to `www.ioutrankap.cyou`.
- Requests containing `merchant-id: 42`.
- Recently registered Cloudflare-hosted domains with similar characteristics.

Collect:

- DNS logs
- Proxy logs
- Browser history
- Network captures
- Authentication records

---

# Containment

Immediate actions:

- Block known domains.
- Block backend API endpoints.
- Prevent outbound connections to identified infrastructure.
- Isolate affected endpoints if compromise is suspected.

---

# Eradication

Remove:

- Malicious bookmarks
- Cached credentials
- Saved sessions
- Browser extensions (if malicious)
- Persistent scheduled tasks (if introduced)

Verify that no unauthorized software or scripts remain.

---

# Recovery

Restore normal operations after:

- Endpoint validation
- Credential reset (if necessary)
- Confirmation that no further communication with campaign infrastructure occurs

Continue monitoring for recurring indicators.

---

# Post-Incident Activities

Conduct:

- Timeline reconstruction
- IOC review
- Detection tuning
- User awareness training
- Lessons learned session

Update internal threat intelligence repositories with newly identified indicators.

---

# Escalation Criteria

Escalate immediately if:

- Financial transactions occurred.
- Credentials were entered.
- Cryptocurrency transfers were initiated.
- Additional domains are identified.
- Multiple users are affected.

---

## Document Information

**Last Updated:**      August 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store