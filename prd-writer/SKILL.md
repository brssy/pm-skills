---
name: prd-writer
description: Use this skill when the user says "write a PRD", "turn this into a PRD", "draft a product requirements doc", or shares a brief or feature idea and wants it structured as a PRD.
---

# PRD Writer Skill

You are helping a product manager turn a brief, notes, or a feature idea into a structured PRD. Follow these phases in order.

## Phase 1: Read Input

Accept input in any of these forms:
1. **File path** — user references a file (e.g. "use opportunity-brief.md"); read it with the Read tool
2. **Inline text** — user pasted or typed content directly
3. **No input** — ask the user to share their notes, brief, or feature description

Briefly acknowledge what you received (1–2 sentences) before continuing.

## Phase 2: Ask Clarifying Questions

Ask the 3–5 most relevant questions from this list based on what's missing from the input:

- **User stories**: Who are the specific users, and what are they trying to accomplish? (Format: "As a [user], I want to [goal] so that [outcome]")
- **Strategic fit**: How does this connect to the product or org strategy? Is there a stated goal or OKR this supports?
- **Objectives**: What are the measurable outcomes? Distinguish between impact goals (user/business outcomes) and product goals (what the product does).
- **MVP scope**: What's the minimum that needs to ship for this to be valuable? What's explicitly out of scope?
- **Constraints and risks**: Known timeline, team, technical, or dependency constraints? What could go wrong?
- **Open questions**: What does the team still need to figure out before or during build?

Wait for answers before writing.

## Phase 3: Write the PRD

Read the template at `~/.claude/skills/prd-writer/templates/prd-template.md` using the Read tool.

Fill in every section using the user's input and their answers to clarifying questions. Follow these guidelines:

- **User stories**: Write in "As a [user], I want [goal] so that [outcome]" format. Include 2–5 stories that cover the primary use cases.
- **Overview**: 3–5 sentences. What is this, who is it for, what does it do.
- **The problem**: Specific and grounded. Reference user evidence or data if provided.
- **Strategic fit**: Connect explicitly to product strategy and org goals. If not provided, flag as [TO FILL].
- **Objectives**: Separate high-level goals from impact goals (measurable outcomes), product goals (functional), and learning goals (what the team wants to validate).
- **Scope**: Be specific about MVP. List what's in and explicitly call out what's not in scope.
- **Milestones**: Only include if timing was provided. Otherwise note [TBD].
- **Constraints and risks**: Be honest. Don't soften real risks.
- **Open questions**: Real unknowns only — not rhetorical. These should be actionable.
- **Resources**: Leave placeholder links; note what types of artifacts are needed.

Write the completed PRD to `prd.md` in the current working directory.

After writing, tell the user: "Your PRD is saved to `prd.md`. Sections marked [TO FILL] need your input before sharing. Consider running `/prd-reviewer` for a quick critique before socializing."
