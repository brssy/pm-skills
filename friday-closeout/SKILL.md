---
name: friday-closeout
description: End-of-week review and next week planning. Use when the user says "friday closeout", "weekly closeout", "close out the week", or "plan next week". Requires the Granola MCP server connected in Claude Code.
user-invocable: true
---

# Friday Closeout Skill

End-of-week ritual: sync meeting notes, review what got done, plan next week, and produce a clean weekly summary. Requires the [Granola MCP server](https://granola.ai) connected in Claude Code.

## Phase 1: Sweep the week's meetings

Call `mcp__claude_ai_Granola__query_granola_meetings` with:
- `query`: "What are all the action items and next steps assigned to me from this week's meetings?"

Then run `/sync-granola` to merge any new items into the work log (it will deduplicate).

## Phase 2: Review this week

Read the work log. Find the "This Week" section (or equivalent — a section with the current week's priorities).

Compare those priorities against the rest of the file:
- Which priorities appear in a Completed section (or are checked off)?
- Which are still active or unchecked?
- Note anything that looks done but isn't marked complete yet

## Phase 3: Draft next week

Propose 2–4 priorities for next week based on:
- Items with explicit deadlines in the next 7 days
- High-priority items that are still open
- Incomplete priorities from this week worth carrying forward
- Your judgement on what matters most

Present the draft to the user **before writing anything**:

> Here's my proposed summary — let me know if you'd like to adjust anything before I save it.
>
> **This week ([date range]):**
> - Goals: [list]
> - Completed: [list]
> - Carried forward: [list]
>
> **Next week ([date range]):**
> - Proposed priorities: [list]
> - Key dates/deadlines: [if any]

Wait for the user to confirm or revise.

## Phase 4: Update the work log

After the user confirms, update the work log:
- Update the "This Week" section with next week's date range and confirmed priorities
- Update the header date if present

## Phase 5: Write weekly summary

Write a `weekly-summary.md` file to the current working directory:

```markdown
# Weekly Summary — [date range]

## Last week
- **Goals:** [priorities from this week]
- **Completed:** [what got done]
- **Carried forward:** [what didn't]

## Next week
- **Priorities:** [confirmed priorities]
- **Key dates:** [if any]
```

Tell the user: "Saved to `weekly-summary.md` — easy to paste into a status update or team standup."
