---
name: sync-granola
description: Sync Granola meeting notes to a work log. Use when the user says "sync granola", "pull in meeting notes", "sync my meetings", or "update todos from meetings". Requires the Granola MCP server connected in Claude Code.
user-invocable: true
---

# Sync Granola Skill

Pull today's meeting action items from Granola and merge them into your work log. Requires the [Granola MCP server](https://granola.ai) connected in Claude Code.

## Phase 1: Find the work log

Look for a `.pm-skills-config` file in the current working directory or home directory. If found, read the `work_log` path from it.

If not found, ask the user:
> "Where's your work log? (e.g. `~/work/todos.md`). I can save this so you don't need to enter it again."

If they want to save it, create `.pm-skills-config` in their home directory:
```
work_log=<path they provided>
```

## Phase 2: Get today's meetings

Call `mcp__claude_ai_Granola__list_meetings` with `time_range: "this_week"`. Filter the results to meetings that occurred today.

If no meetings today, tell the user and stop.

## Phase 3: Extract action items

Call `mcp__claude_ai_Granola__query_granola_meetings` with:
- `document_ids`: the IDs of today's meetings
- `query`: "What are all the action items and next steps assigned to me from these meetings?"

Preserve any citation links returned — they let the user trace items back to the source meeting note.

## Phase 4: Merge into work log

Read the work log file.

Infer the existing categories from the headings in the file (e.g. `## Engineering`, `## Design`, `## Personal`). For each action item:
- Match it to an existing category if one fits
- Create a new category heading if nothing fits
- Skip any item already present in the file (check for duplicates before adding)
- Add items as unchecked markdown checkboxes: `- [ ] item text`

Write the updated file.

## Phase 5: Report

Tell the user what was added, which meetings the items came from, and include the Granola citation links so they can review the source notes.

If nothing new was added, say so.
