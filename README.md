# PM Claude Skills

Shared Claude Code skills for the product team.

## Setup (one-time)

```bash
git clone git@github.com:yourorg/pm-claude-skills.git ~/work/pm-claude-skills
cd ~/work/pm-claude-skills
./setup.sh
```

This symlinks the repo into `~/.claude/skills/pm-skills/`. No Claude restart needed.

## Getting updates

```bash
cd ~/work/pm-claude-skills
git pull
```

That's it. Skills are live immediately.

## Available Skills

| Skill | Trigger | What it does |
|---|---|---|
| `opportunity-brief` | `/opportunity-brief` | Turns rough notes into a structured opportunity brief with research |

## Adding a skill

1. Create a folder: `your-skill-name/`
2. Add `SKILL.md` with frontmatter (`name`, `description`) and instructions
3. Optionally add `templates/` for output formats
4. Open a PR

### SKILL.md frontmatter format

```yaml
---
name: skill-name
description: Describe when Claude should trigger this skill. Be specific about trigger phrases.
---
```

## Repo layout

```
pm-claude-skills/
├── opportunity-brief/
│   ├── SKILL.md
│   └── templates/
│       └── brief-template.md
├── setup.sh
└── README.md
```
