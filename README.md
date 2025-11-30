# Neurogate

A multi-tenant web server written in Rust for hosting static sites and reverse proxies across multiple domains.

## Configuration

Edit `config.toml` to configure domains and subdomains.

### Multi-Domain Example

```toml
root_dir = "/var/www"
certcache_dir = "./certcache"
cert_email = "your-email@example.com"

[domains]
"example.com" = { root = "/var/www/example", blog = "/var/www/blog" }
"another.com" = { root = "/var/www/another", api = "/var/www/api" }
```

This sets up:
- `example.com` serving files from `/var/www/example`
- `blog.example.com` serving files from `/var/www/blog`
- `another.com` serving files from `/var/www/another`
- `api.another.com` serving files from `/var/www/api`

## Running

For development:
```bash
cargo run
```

For production with TLS:
```bash
cargo run -- --production
```

## Migration from Single Domain

Previous config:
```toml
root_domain = "example.com"
[subdomains]
root = "/path"
sub = "/subpath"
```

New config:
```toml
[domains]
"example.com" = { root = "/path", sub = "/subpath" }
```</content>
<parameter name="filePath">README.md