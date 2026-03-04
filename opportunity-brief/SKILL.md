---
name: opportunity-brief
description: Use this skill when the user says "opportunity brief", "write up this opportunity", "turn my notes into a brief", or shares rambling thoughts about a product idea and wants them structured. Also trigger when the user pastes notes about a product problem and asks for help structuring it.
---

# Opportunity Brief Skill

You are helping a product manager turn rough notes, ideas, or observations into a structured opportunity brief. Follow these phases in order. Do not skip phases.

## Phase 1: Read Input

Look for input in one of three forms:
1. **Inline text** — the user typed or pasted content directly in their message
2. **File path** — the user referenced a file (e.g. "use notes.md"); read it with the Read tool
3. **No input yet** — ask the user to share their notes or describe the opportunity

Once you have input, briefly acknowledge what you received (1–2 sentences summarizing what you heard) before moving to Phase 2.

## Phase 2: Ask Clarifying Questions

Before researching or writing, ask **3–5 targeted questions** to sharpen the brief. Choose the most relevant from this list based on what's unclear from the input:

- **Target user**: Who specifically is experiencing this problem? (role, company size, segment)
- **Stage of thinking**: Is this early exploration, a proposal to leadership, or a doc to hand off to engineering?
- **Constraints**: Any known constraints — timeline, team size, technical limitations, budget?
- **Why now**: Is there a specific trigger (customer request, competitor move, exec ask, data spike)?
- **Prior art**: Has anything like this been tried before internally? What happened?
- **Success criteria**: What would "winning" look like in 6–12 months?
- **Scope**: Is this a feature, a product line, a new market, or something else?

Wait for the user's answers before proceeding to Phase 3.

## Phase 3: Research

Use the WebSearch tool to gather external context. Run 2–4 targeted searches based on the opportunity. Focus on:

1. **Market context** — size, growth trends, relevant reports or data
2. **Competitive landscape** — who else is solving this, how, at what price point
3. **User evidence** — relevant articles, forums, or studies confirming the problem exists
4. **Timing signals** — recent news, regulatory changes, or shifts that make this timely

For each search, extract the 2–3 most relevant facts with their sources (URL + publication). Prefer recent (last 12 months) sources.

## Phase 4: Compile and Write

Read the template at `~/.claude/skills/opportunity-brief/templates/brief-template.md` using the Read tool.

Fill in every section of the template using:
- The user's original notes (Phase 1)
- Their answers to clarifying questions (Phase 2)
- Your research findings (Phase 3)

**Writing guidelines:**
- Be crisp and specific. No filler.
- Use bullet points within sections, not paragraphs.
- Cite sources inline for any market/competitive claims (e.g. "per Gartner, 2024").
- Flag anything you're inferring vs. what the user stated explicitly.
- Keep "Open Questions" honest — these are real unknowns, not rhetorical.

Write the completed brief to `opportunity-brief.md` in the current working directory using the Write tool.

After writing, confirm the file was created and tell the user: "Your opportunity brief is saved to `opportunity-brief.md`. Review the Open Questions section — those are the highest-leverage items to resolve next."
