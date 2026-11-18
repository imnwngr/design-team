# Design Team

A Codex skill for choosing design methods for a particular brief. It draws on twelve upstream repositories. Codex reads the project, selects the relevant methods, then plans, reviews or builds according to the request. [Tiếng Việt](README.vi.md)

## Try it in a project

Ask Codex to read the full path to `skills/design-team/SKILL.md` in this checkout and give it a brief. To make `$design-team` discoverable in later sessions, run these commands from this repository in PowerShell.

```powershell
./scripts/Test-Package.ps1
./scripts/Install-Skill.ps1 -WhatIf
./scripts/Install-Skill.ps1
```

The installer copies the skill and its catalog into `~/.agents/skills/design-team` and requires a new destination. For a project-local install pass `-Destination /path/to/project/.agents/skills/design-team`. For a manual install copy the full `skills/design-team` directory to the same location. Open a new Codex session in the target project.

| Goal | Example request |
|---|---|
| Plan | `$design-team Plan a booking page for this studio. Use the existing brand and booking route. Plan only.` |
| Review | `$design-team Review address entry on the mobile checkout. Report the evidence and suggested fixes.` |
| Build | `$design-team Build the agreed booking page. Test the primary action on phone and desktop.` |
| Diagram | `$design-team Draw the documented approval flow as a standalone HTML diagram, including the rejection branch.` |

A plan ends with the selected methods and checks. A review ranks findings by user impact. A build returns the working change and verification evidence. The coordinator ships Markdown guidance. Upstream tools have separate prerequisites, permissions and licenses. Pick their pinned entry points from the [catalog](skills/design-team/references/catalog.md). See the [validation record](VALIDATION.md) for tested coverage.

Inspired by [Security Team](https://github.com/imnwngr/security-team) and the [design-skills list](https://github.com/stars/imnwngr/lists/design-skills).
