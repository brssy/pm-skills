---
name: write-ticket-linear
description: Write a product ticket with a user story and acceptance criteria, then create it in Linear. Use when the user wants to write a product ticket, create a Linear issue, or define acceptance criteria for a feature. Requires Linear MCP server.
argument-hint: "[ticket title or description] [optional: Figma URL or design link]"
---

You are helping the user write a well-structured product ticket for Linear. Each ticket has two required parts:

1. **User story** — who the work is for, what capability it enables, and why it matters
2. **Acceptance criteria** — specific, testable conditions that must be met for the work to be done

---

## Your approach

### Step 1 — Understand what was passed in

Check `$ARGUMENTS` for:
- A **Figma URL** — use `get_metadata` to find the specific frames relevant to this ticket, then construct deep-link URLs to those frames (format: `https://figma.com/design/:fileKey/:fileName?node-id=:nodeId`). Figma links are added as linked resources on the Linear issue (via the `links` parameter), **not** embedded in the description.
- A **ticket title or description** — use it as the starting point
- Both, neither, or a mix

If no Figma URL is provided, ask the user if there are designs. If yes, ask for the link before drafting. If the ticket is backend-only with no UI, there are no Figma links to attach.

### Step 2 — Gather what you need

You need these five inputs to write the ticket. Collect what you can from `$ARGUMENTS` and from context in the current conversation, then ask only about genuine gaps.

| Input | What to find |
|---|---|
| **Title** | A short, action-oriented name for the ticket (verb + noun) |
| **User / role** | Who benefits from this work — a specific user type, not "users" |
| **Capability** | What the user can do as a result of this work |
| **Benefit / why** | Why this matters to the user |
| **Key screens or features** | What UI or backend work is involved |
| **Figma link** | Design reference, if one exists |

If the user provided a title and rough description, you likely have enough. Ask only 2–3 focused questions for genuine gaps, not all five. It's better to draft with `[NEED: ...]` placeholders than to over-ask.

Ask about the persona if it is ambiguous — "caseworker", "applicant", "provider", "admin", etc. are meaningfully different audiences.

### Step 3 — Draft the ticket

Once you have enough context, write the full ticket in one pass.

---

## Ticket format

Use standard Markdown throughout (Linear renders standard Markdown). Do not use Jira wiki markup (`h1.`, `{{code}}`).

```markdown
## User story

- As a [specific role]
- I want [capability]
- So that [benefit]

## Acceptance criteria

[Group criteria by screen or concern. Use sub-headings for multi-screen tickets.]

- [criterion]
- [criterion]
...
```

Figma links are **not** included in the description. They are attached as linked resources on the Linear issue via the `links` parameter (see "After drafting").

---

## Writing good acceptance criteria

Acceptance criteria should be brief, specific, and testable. One line per criterion. No explanations.

**Always consider these categories** and include the ones that apply. Omit any that don't apply to this ticket.

### Content
Do **not** reproduce copy, labels, or content from the Figma designs in acceptance criteria — this creates multiple sources of truth that can get out of sync. Instead, use a single criterion:
- "Content matches the Figma designs"

**Exception:** If the screen contains links within body text, specify the behavior of those links (destination, opens in new tab, etc.), since this is behavior, not content.

### Functional
What the screen or feature must do. Lead with the most important behavior.
- "Clicking [button] loads [destination screen]"
- "The [button] is disabled until [condition]"

### Accessibility
Include for any ticket that adds or changes UI. Write specific, testable requirements for this screen — do **not** write a generic "meets WCAG 2.1 AA" criterion, as that is not testable on its own.

Think through the screen's actual elements and write criteria for each relevant concern:
- Focus order: "All content is announced by a screen reader in the correct reading order"
- Keyboard access: "All interactive elements are reachable and operable via keyboard navigation"
- Labels: "All form fields have programmatically associated visible labels"
- Helper / error text: "Helper text is associated with [field] via `aria-describedby`"
- Error announcements: "Inline errors are announced via `role="alert"` when triggered"
- Images / icons: "Icons that convey meaning have an accessible label; decorative icons are hidden from screen readers"
- Status / state: "The [selected / expanded / disabled] state of [element] is communicated to screen readers"
- Color contrast: "Text and interactive elements meet WCAG AA contrast ratios" (only if contrast is a known risk for this design)
- Toggle / disclosure: "[Element] uses `aria-expanded` to reflect open/closed state"

Only include criteria that apply to this specific screen. Omit any that don't.

### Tracking / analytics
Include for any screen or button. Use the specific event names your project uses.
- "Loading the screen fires a `page_load` event with a `url` property"
- "Clicking any button fires a `button_click` event with `url` and `element_id` properties"
- "Clicking any link fires a `link_click` event with `url` and `element_id` properties"

Adjust event names and property names to match the project's analytics conventions (Mixpanel, Segment, etc.) if known from context.

### Data validation
Include for any screen with user input.
- "An invalid [field] shows error: '[exact error message]'"
- "[Field] is required — submitting without it shows an error"
- "[Field] is optional — the form can be submitted without it"
- "The [field] input accepts only [type/format]"
- "On mobile, [field] activates the [numeric/telephone/email] keyboard"

### Data storage
Include when the ticket involves persisting data.
- "On submission, [field] is saved to [record] in the database"
- "The [timestamp] is recorded when [event] occurs"

### Navigation
Include for any screen that has links or redirects.
- "Going back from this screen [does X / shows a warning / is blocked]"
- "The '[link text]' link goes to [destination]"

### Feature flags / progressive rollout
Include when work is being gated.
- "This screen is behind the `[flag-name]` feature flag, disabled in production"

### Cross-browser / cross-device
Include only when behavior is known to vary (e.g., clipboard API, camera, file pickers).
- "The [feature] works on: iOS/Safari, Android/Chrome, Windows/Chrome, macOS/Safari"

---

## Keeping criteria brief

- One bullet = one checkable condition
- Do not explain or justify — if the why is important, put it in the user story
- Do not reproduce content (copy, labels, placeholder text) from the designs — use "Content matches the Figma designs" instead
- Do not duplicate what the designs already show — trust the Figma link
- Do not write "should" — use "is", "does", "fires", "shows"
- Do not invent criteria for edge cases that haven't been discussed

---

## After drafting

Once you have produced the ticket, do two things:

1. **Offer to create it in Linear.** Say: "I can create this in Linear if you have the Linear MCP configured. Which team and project should I use?" If the user confirms and Linear MCP tools are available (look for tools named like `linear_create_issue`, `create_issue`, or similar), create the issue with:
   - `title`: the ticket title
   - `description`: the full Markdown body (no Figma links in the body)
   - `teamId` / `projectId`: from the user's answer or by listing available teams/projects first
   - `links`: any Figma URLs as linked resources, each with a descriptive title (e.g. `"Figma – Mobile landing screen"`). One entry per distinct frame.

2. **Ask if anything needs adjusting** — persona, scope, criteria coverage — before the user copies or files it.
