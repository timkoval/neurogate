## 1. Configuration Changes
- [x] 1.1 Update Config struct to include domains map instead of single root_domain
- [x] 1.2 Modify config parsing to handle new format

## 2. Routing Logic
- [x] 2.1 Update mk_hostname_router to iterate over multiple domains
- [x] 2.2 Modify subdomain mapping to be per-domain
- [x] 2.3 Ensure root domain handling works for each domain

## 3. TLS and Certificate Handling
- [x] 3.1 Update serve_with_tls to accept multiple domains
- [x] 3.2 Ensure certificate cache works per domain
- [x] 3.3 Test certificate renewal for multiple domains

## 4. Testing and Validation
- [x] 4.1 Add unit tests for multi-domain config parsing
- [x] 4.2 Add integration tests for multi-domain routing

## 5. Documentation
- [x] 5.1 Update config.toml example with multi-domain format
- [x] 5.2 Update README with multi-domain usage</content>
<parameter name="filePath">openspec/changes/add-multi-domain-support/tasks.md