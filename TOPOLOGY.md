<!-- SPDX-License-Identifier: PMPL-1.0-or-later -->
<!-- TOPOLOGY.md — Project architecture map and completion dashboard -->
<!-- Last updated: 2026-02-19 -->

# Unified Dataset Vocab — Project Topology

## System Architecture

```
                        ┌─────────────────────────────────────────┐
                        │              VOCABULARY USER            │
                        │        (Schema Design / Data Eng)       │
                        └───────────────────┬─────────────────────┘
                                            │
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │           VOCABULARY CORE               │
                        │    (Formal Definitions, Taxonomies)     │
                        └───────────────────┬─────────────────────┘
                                            │
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │           INTERFACE LAYER (FFI)         │
                        │  ┌───────────┐  ┌───────────────────┐  │
                        │  │ Idris2 ABI│  │     Zig FFI       │  │
                        │  │ (Proofs)  │  │ (Memory Safety)   │  │
                        │  └─────┬─────┘  └────────┬──────────┘  │
                        └────────│─────────────────│──────────────┘
                                 │                 │
                                 ▼                 ▼
                        ┌─────────────────────────────────────────┐
                        │           DATA FORMATS / MARKUP         │
                        │      (A2ML, JSON-LD, RDF/Turtle)        │
                        └─────────────────────────────────────────┘

                        ┌─────────────────────────────────────────┐
                        │          REPO INFRASTRUCTURE            │
                        │  Justfile Automation  .machine_readable/  │
                        │  ABI-FFI Standards    0-AI-MANIFEST.a2ml  │
                        └─────────────────────────────────────────┘
```

## Completion Dashboard

```
COMPONENT                          STATUS              NOTES
─────────────────────────────────  ──────────────────  ─────────────────────────────────
CORE VOCABULARY
  Formal Definitions                ████░░░░░░  40%    Initial RSR skeleton stable
  Taxonomy Logic                    ██░░░░░░░░  20%    Pending specification
  A2ML Integration                  ████░░░░░░  40%    Markup hooks verified

ABI & FFI
  Idris2 ABI (Proofs)               ██████████ 100%    Type-level layout verified
  Zig FFI Bridge                    ████████░░  80%    Memory safe HAL refining
  C Header Generation               ██████████ 100%    Auto-generated from Idris2

REPO INFRASTRUCTURE
  Justfile Automation               ██████████ 100%    Standard build tasks
  .machine_readable/                ██████████ 100%    STATE tracking active
  0-AI-MANIFEST.a2ml                ██████████ 100%    AI entry point verified

─────────────────────────────────────────────────────────────────────────────
OVERALL:                            █████░░░░░  ~50%   Infrastructure stable, Vocab maturing
```

## Key Dependencies

```
Philosophy ──────► Vocabulary Spec ──────► Idris2 Proof ──────► C ABI Header
     │                 │                      │                    │
     ▼                 ▼                      ▼                    ▼
CCCP Policy ─────► 0-AI-MANIFEST ────────► Just Build ────────► Compliance
```

## Update Protocol

This file is maintained by both humans and AI agents. When updating:

1. **After completing a component**: Change its bar and percentage
2. **After adding a component**: Add a new row in the appropriate section
3. **After architectural changes**: Update the ASCII diagram
4. **Date**: Update the `Last updated` comment at the top of this file

Progress bars use: `█` (filled) and `░` (empty), 10 characters wide.
Percentages: 0%, 10%, 20%, ... 100% (in 10% increments).
