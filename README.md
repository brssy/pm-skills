# PM Claude Skills

A library of [Claude Code](https://claude.ai/code) skills for product managers — structured workflows for the research, writing, and review work PMs do every day.

## What's a skill?

Skills are reusable prompts that extend Claude Code with structured, multi-step behaviors. You invoke them with a slash command (e.g. `/opportunity-brief`) and Claude follows a defined workflow: asking clarifying questions, doing research, and producing a specific output.

## Available Skills

| Skill | Trigger | What it does |
|---|---|---|
| `opportunity-brief` | `/opportunity-brief` | Turns rough notes into a structured opportunity brief with web research |
| `prd-writer` | `/prd-writer` | Turns a brief or notes into a full PRD |
| `prd-reviewer` | `/prd-reviewer` | Critiques a PRD for gaps, missing metrics, and ambiguities |
| `roadmap` | `/roadmap` | Organizes initiatives into a structured Now/Next/Later roadmap |
| `sync-granola` | `/sync-granola` | Pulls today's meeting action items from Granola and merges them into your work log — requires Granola MCP server |
| `friday-closeout` | `/friday-closeout` | End-of-week ritual: sweeps meetings, reviews the week, drafts next week's priorities, and writes a weekly summary — requires Granola MCP server |

## Setup

```bash
git clone https://github.com/brssy/pm-skills.git ~/pm-skills
cd ~/pm-skills && ./setup.sh
```

This symlinks the repo into `~/.claude/skills/pm-skills/`. Skills are available immediately — no restart needed.

## Getting updates

```bash
cd ~/pm-skills
git pull
```

## Adding a skill

1. Create a folder: `your-skill-name/`
2. Add `SKILL.md` with frontmatter and instructions (see existing skills for examples)
3. Optionally add a `templates/` folder for output formats
4. Open a PR

### SKILL.md frontmatter

```yaml
---
name: skill-name
description: Describe when Claude should trigger this skill. Be specific about trigger phrases.
---
```

## Contributing

Free to use, adapt, and share — [CC0 licensed](./LICENSE). PRs welcome. If you work in civic tech or public interest product and have a skill worth sharing, open an issue or submit a pull request.

## License

[CC0 1.0 Universal](./LICENSE) — public domain, no restrictions.
