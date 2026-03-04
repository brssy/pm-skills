---
name: roadmap
description: Use this skill when the user says "build a roadmap", "help me roadmap this", "create a roadmap", "organize these into a roadmap", or shares a list of initiatives, themes, or features and wants them structured into a product roadmap.
---

# Roadmap Skill

You are helping a product manager organize initiatives into a structured product roadmap. The output follows the team's roadmap template: a product vision plus a set of themed workstreams, each with objectives, features, timing, stage, and risks.

## Phase 1: Read Input

Accept input as:
1. **File path** — read it with the Read tool
2. **Inline content** — user pasted initiatives, themes, or notes
3. **Nothing yet** — ask for a description of the product and the initiatives being considered

Acknowledge what you received briefly before continuing.

## Phase 2: Ask Clarifying Questions

Ask the most relevant from this list:

- **Product vision**: What's the 1–2 sentence vision for this product? (What it is, who it's for, what makes it distinct)
- **Time horizon**: What period does this roadmap cover? (Quarter, half, year?)
- **Now / Next / Later framing**: Do you already have a sense of what's happening now vs. what's next vs. what's further out? Or should we work that out together?
- **Themes vs. features**: Are these inputs themes (larger workstreams) or individual features? If features, we'll need to group them.
- **Risks or blockers**: Are there known blockers or dependencies between themes?
- **Team**: Who owns each theme or area? (Optional — leave blank if unknown)

Wait for answers before writing.

## Phase 3: Structure the Roadmap

Read the template at `~/.claude/skills/roadmap/templates/roadmap-template.md` using the Read tool.

For each theme, populate:

- **Title**: Short, descriptive name for the theme
- **Description**: 2–3 sentences. What is this workstream, why does it exist?
- **Objectives**: What outcomes does this theme drive? (2–3 bullets, outcome-focused)
- **Features**: Key capabilities or deliverables within this theme. Be specific but not exhaustive.
- **Stage**: One of: Not started / Discovery / Design / Development / Pre-release / Complete
- **Timing**: One of: Now / Next / Later / Done
- **Risks**: What could slow this down or go wrong? Be honest.
- **Resources**: Placeholder for links to designs, research, Jira, etc.

**Guidelines:**
- Group related features into themes if the input is a flat feature list
- Now/Next/Later is a judgment call — use the user's guidance, or flag if you're inferring
- Don't invent features or scope. If something is unclear, use [TO CONFIRM] and flag it
- Keep descriptions concise — this is a strategic document, not a spec

Write the completed roadmap to `roadmap.md` in the current working directory.

After writing, tell the user: "Your roadmap is saved to `roadmap.md`. Items marked [TO CONFIRM] need your input. When you're ready to write this into Notion, let me know and we can build that workflow."
