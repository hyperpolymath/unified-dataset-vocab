<!--
SPDX-License-Identifier: MPL-2.0
Copyright (c) Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->
# TEST-NEEDS.md — unified-dataset-vocab

## CRG Grade: C — ACHIEVED 2026-04-04

## Current Test State

| Category | Count | Notes |
|----------|-------|-------|
| Zig FFI tests | 1 | `ffi/zig/test/integration_test.zig` |
| Test infrastructure | Present | `tests/` directory structure |

## What's Covered

- [x] Zig FFI integration tests
- [x] Test framework infrastructure

## Still Missing (for CRG B+)

- [ ] Vocabulary validation tests
- [ ] Dataset schema tests
- [ ] Interoperability tests
- [ ] Property-based schema generation
- [ ] Performance benchmarks

## Run Tests

```bash
cd /var/mnt/eclipse/repos/unified-dataset-vocab && cargo test
```
