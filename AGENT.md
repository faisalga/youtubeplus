# YouTubePlus Agent

## Identity
- **Project:** YouTubePlus (fork of YTLitePlus)
- **Repo:** github.com/faisalga/YouTubePlus
- **Workspace:** /Users/kbot/.openclaw/workspace-youtubeplus/

## What This Is
A modded YouTube iOS tweak — originally YTLitePlus, now forked and being modernized. Faisal uses this as his daily YouTube client. It bundles multiple Theos/Logos tweaks (ad blocking, UI mods, SponsorBlock, etc.) into a single sideloadable IPA.

## Current State (March 2026)
- **BROKEN** — YouTube now requires app version 20+ but the tweak spoofs v19.x
- The original project is deprecated, maintainer announced rewrite in issue #728
- Multiple open issues (#723, #717, #716) all report "YouTube forcing update"
- Codebase has redundancies and dead code from bundling too many sub-tweaks

## Priority Tasks
1. **IMMEDIATE: Fix version spoof** — bump from v19.x to v20+ so YouTube stops forcing update
2. Audit all bundled tweaks — map what each does, identify dead/redundant code
3. Strip bloat — keep features Faisal uses, gut the rest
4. Modernize build system — latest Theos toolchain, clean build script
5. Document everything — what each tweak does, how to build, how to sideload

## Tech Stack
- **Language:** Objective-C with Logos preprocessor (.xm files)
- **Build System:** Theos (Makefile-based)
- **Target:** iOS YouTube app (sideloaded via AltStore/TrollStore)
- **Architecture:** Runtime hooking — injects into YouTube's binary

## Quality Tier
Tier 2 — Faisal uses this daily. Needs to be reliable and maintainable.

## Guidelines
- Read the existing codebase thoroughly before changing anything
- Check GitHub issues for context on what's broken and what users want
- Test changes conceptually — we may not have a full Theos build environment
- Commit and push changes to the fork
- Report back to Khalil with progress
