## Why
Currently, neurogate supports hosting multiple subdomains under a single root domain. To enable broader use cases like hosting entirely separate domains (e.g., example.com and another.com) on the same server instance, we need to add support for multiple root domains, each with their own subdomain configurations.

## What Changes
- Update configuration format to support multiple domains with their subdomains
- Modify hostname routing logic to match against multiple root domains
- Ensure TLS certificate handling works for multiple domains

## Migration
- Update config.toml from single domain format to new multi-domain map format
- Existing single domain configs will need manual conversion

## Impact
- Affected specs: domain-routing
- Affected code: config parsing, hostname router, TLS setup
- **BREAKING**: Configuration file format changes</content>
<parameter name="filePath">openspec/changes/add-multi-domain-support/proposal.md