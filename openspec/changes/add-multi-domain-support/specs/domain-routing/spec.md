## ADDED Requirements

### Requirement: Multi-Domain Configuration
The system SHALL support configuration of multiple root domains, each with their own subdomain mappings.

#### Scenario: Multiple domains configured
- **WHEN** config specifies multiple domains with subdomains
- **THEN** each domain serves its configured content independently

### Requirement: Hostname-Based Routing for Multiple Domains
The system SHALL route requests to the appropriate handler based on the full hostname matching any configured domain or subdomain.

#### Scenario: Request to subdomain of second domain
- **WHEN** request comes to sub.example2.com
- **THEN** serves content configured for example2.com's "sub" subdomain

### Requirement: TLS Certificate Management for Multiple Domains
The system SHALL obtain and manage TLS certificates for all configured domains.

#### Scenario: Certificate renewal for multiple domains
- **WHEN** certificates expire for any domain
- **THEN** automatically renews certificates for all domains</content>
<parameter name="filePath">openspec/changes/add-multi-domain-support/specs/domain-routing/spec.md