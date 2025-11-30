# Project Context

## Purpose
Neurogate is a multi-tenant web server written in Rust that serves static files for different subdomains and provides reverse proxy functionality to local services. It automatically handles HTTPS certificates via Let's Encrypt and supports both development (local) and production modes.

## Tech Stack
- Rust (edition 2021)
- Axum (web framework)
- Tokio (async runtime)
- Hyper (HTTP client/server)
- Tower (middleware framework)
- Rustls-acme (automatic HTTPS certificates)
- TOML (configuration)
- Log (logging)

## Project Conventions

### Code Style
- Follow standard Rust formatting (rustfmt)
- Use snake_case for variables and functions
- Use PascalCase for types and structs
- Async functions use tokio::main
- Error handling with anyhow::Result
- Logging with log crate macros (debug!, info!, error!)

### Architecture Patterns
- Hostname-based routing for multi-tenancy
- Middleware layer for URL rewriting (adding .html extensions)
- Reverse proxy pattern for forwarding requests to local services
- Async/await for non-blocking I/O
- Configuration-driven subdomain mapping

### Testing Strategy
- Unit tests for individual functions
- Integration tests for HTTP handlers
- Use tokio::test for async tests
- Mock external dependencies where possible

### Git Workflow
- Main branch for production
- Feature branches for development
- Conventional commit messages
- Pull requests for code review

## Domain Context
- Web server hosting multiple sites under subdomains
- Reverse proxy for backend services
- Static file serving with automatic HTTPS
- Development vs production modes

## Important Constraints
- Requires config.toml file with domain and subdomain configuration
- Production mode requires valid domain and email for Let's Encrypt
- Reverse proxy assumes services run on localhost with specific ports
- Certificate cache directory must be writable

## External Dependencies
- Let's Encrypt ACME service for automatic HTTPS certificates
- DNS configuration for subdomain routing
