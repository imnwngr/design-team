![Design Team cover, a booking form moves from tracing paper to a printed screen on a designer’s desk.](docs/images/studio-cover.jpg)

# Design Team

**Tell Codex which screen you’re working on and what someone needs to do there.** Design Team helps it choose the right methods from 12 design repositories. Ask for a plan before touching code, a second look at an awkward interaction, or a working change you can try.

**English** · [Tiếng Việt](README.vi.md)

[Quick start](#quick-start) · [Pick a task](#pick-a-task) · [See a review](#see-a-review) · [Meet the toolkit](#meet-the-toolkit)

## Quick start

You’ll need access to this repository, Git, PowerShell and Codex. Run these commands from the directory where you keep projects.

```powershell
git clone https://github.com/imnwngr/design-team.git
cd design-team
./scripts/Test-Package.ps1
./scripts/Install-Skill.ps1 -WhatIf
./scripts/Install-Skill.ps1
```

Open **the project you want to design** in a new Codex session. Paste this into the chat and change the page and goal to fit your project.

```text
$design-team Plan a booking page for our studio.
Use our existing colors and booking flow.
Tell me which methods you’d use and how we’ll check that a customer can book.
Plan only.
```

Expect a short plan naming the main action, the design direction, the selected skills and the checks. The installer copies the coordinator and its catalog. You can start planning immediately and check any specialist tool’s prerequisites when you need it.

<details>
<summary>Try it before installing, or install for one project</summary>

After cloning, give Codex the absolute path to `skills/design-team/SKILL.md` and ask it to follow that file for your brief. Once you install the skill, you can invoke it by name.

The default installation lives at `~/.agents/skills/design-team`. To install only for one project, pass its destination to the installer.

```powershell
./scripts/Install-Skill.ps1 -Destination 'C:\dev\my-project\.agents\skills\design-team'
```

For a manual install, copy the entire `skills/design-team` folder, including `references` and `agents`, to that destination. The installer requires a new destination and preserves an existing installation.

</details>

## From brief to result

![Codex reads the project and brief, selects methods, then returns a plan, findings or a tested change according to the task.](docs/images/workflow-en.svg)

## Pick a task

| What you need | What to ask Codex | What you get |
|---|---|---|
| A plan | “Plan a booking page using our current brand.” | A direction, selected methods and acceptance checks. |
| A review | “Review address entry on mobile checkout. Report only.” | Ranked issues with a location, evidence and a suggested fix. |
| A working change | “Build the agreed booking page and test the booking action.” | Changes in your project and a record of the interactions tested. |
| A diagram | “Turn this approval process into one HTML diagram. Include rejection.” | A diagram you can open in a browser and compare with the source process. |

Use `$design-team` at the start of any example. A route, screenshot or component path helps Codex find the right starting point.

## See a review

**Sample request.** “Once I start typing on the checkout page, I forget which address field I’m in.” In the sample checkout, entering text at a 390 px viewport made the only visible prompt disappear. A review can point to the exact field and propose a persistent label. The illustration shows that proposal.

![The same address entered in two fields. A persistent Street address label above the second field keeps its purpose visible.](docs/images/checkout-en.svg)

**Check the proposed fix.** enter an address, move focus away, then return with the keyboard. The label should still be visible and associated with the input. The original fixture and the scope of the browser check are documented in the [validation record](VALIDATION.md).

## Meet the toolkit

Codex starts with your brief, existing components and brand guidance. For an established checkout, it can go straight to layout and accessibility. A new editorial site may need art direction first. Each selected skill gets a specific job and a way to check the result.

| Design job | Where Codex looks |
|---|---|
| Find a visual direction | **Hallmark** for a new page’s composition. **Taste Skill** for brand-led websites where typography and photography carry the story. |
| Build a system or fix a screen | **UI UX Pro Max** for tokens and reusable patterns. **Jakub Krehel’s skills** for a particular layout, label, focus state or interface review. |
| Critique and refine | **Impeccable** for targeted critique and polish. **Anti-slop** for a final pass on content, responsive layout and working controls. |
| Design motion | **GSAP Skills** for animation implementation, **Scroll Craft** for scroll-led storytelling and **Scroll World** for a continuous camera flight. |
| Work in 3D | **Three.js Skills** for scenes, cameras and controls. **img2threejs** for reconstructing a supplied reference as a procedural model. |
| Explain a process | **Diagram Design** for a branded diagram with readable labels and traceable connections. |

The catalog links to the exact upstream revisions reviewed and describes their prerequisites. The validation record lists package checks, installer tests and browser fixtures. Native execution across all twelve tools still needs end-to-end testing. [Skill catalog](skills/design-team/references/catalog.md) · [Coordinator instructions](skills/design-team/SKILL.md) · [Validation](VALIDATION.md)

Design Team grew out of the same selection workflow as [Security Team](https://github.com/imnwngr/security-team), using the [design-skills collection](https://github.com/stars/imnwngr/lists/design-skills).
