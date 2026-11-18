# Validation

## Repeatable package check

Run `./scripts/Test-Package.ps1` from the checkout. It checks required files, relative Markdown links, PowerShell syntax and twelve distinct upstream skill links pinned to full commit IDs.

## Behavioral acceptance briefs

| Input | Expected decision and evidence |
|---|---|
| Review an existing mobile checkout whose address input has a placeholder but no label. Source access only. | Choose the interface accessibility and writing methods. Inspect the actual markup, report the missing persistent label, leave source intact and identify browser checks still needed. Conversion impact requires separate evidence. |
| Plan a booking landing page with brand tokens and an existing booking route. Plan only. | Reuse the brand and route, consider Hallmark for page composition and Anti-slop for the eventual UI pass. Specify phone and desktop booking checks. Deliver the plan in chat and stop. |
| Draw a documented approval decision with approve and reject outcomes as a standalone diagram. | Select Diagram Design. Trace request to decision and both outcomes. Check label readability and arrow direction at delivery size. A diagram brief alone calls for no website or motion pipeline. |

The coordinator can apply a pinned method from its documentation. Running an upstream helper requires a compatible local checkout, runtime and permission for the requested operation. Native integration of all twelve repositories remains unverified.

## Local verification, 2026-11-18

- Read the public skill entry for each of the twelve full commit IDs in the catalog. The package check passed for file structure, local links, PowerShell parsing and pin uniqueness.
- Exercised the installer against a new temporary destination. Preview left the destination absent, installed files matched their sources by SHA-256 and a second invocation refused to overwrite them.
- Parsed skill frontmatter and UI metadata with an installed YAML parser and checked the skill name, description, display name, prompt and short description. The skill-creator Python validator could not start because its interpreter lacked PyYAML.
- Walked through the booking brief in plan mode. Retain the supplied studio tokens, compose the page around booking with Hallmark guidance, point the primary action at the existing booking route, and select Anti-slop for the eventual mobile and keyboard pass. The deliverable at this stage is the plan.
- Verified the mobile checkout example in an isolated Edge page at 390 px. The address input had zero associated labels and its placeholder disappeared after typing. A persistent label is the suggested fix. This test measured form behavior only.
- Created an in-memory approval diagram with inline SVG. Headless Edge found all four labels inside the rendered SVG at 390 and 1280 px, with three directed connectors for request, review and the two outcomes.

These are coordinator walkthroughs and fixture checks. Automatic discovery in a fresh Codex session, native upstream commands and complete third-party site builds remain untested.
