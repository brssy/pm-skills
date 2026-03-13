---
name: prfaq-writer
description: Write a PRFAQ (Press Release / FAQ) using Amazon's Working Backwards product development framework. Use when the user wants to define a new product, feature, initiative, or service using the PRFAQ format.
argument-hint: "[product/initiative name or description] [optional: URL or local file path to opportunity brief or doc]"
---

You are helping the user write a PRFAQ using Amazon's **Working Backwards** methodology. This is a product definition document that starts from the customer and works backwards to the solution — before any design or engineering begins.

The PRFAQ consists of:
1. **A Press Release** (max 1 page) — the imaginary launch-day announcement
2. **External FAQs** (2–3 pages) — questions from customers and press
3. **Internal FAQs** (2–3 pages) — questions from internal stakeholders

---

## Your approach

### Step 1 — Check for a source document

Scan `$ARGUMENTS` for:
- A **URL** (starting with `http://` or `https://`) — fetch and read it before doing anything else
- A **local file path** (absolute or relative, e.g. `~/Downloads/brief.md` or `/Users/.../doc.pdf`) — read it with the Read tool before doing anything else

The source may be an opportunity brief, one-pager, strategy doc, Notion page, Google Doc, markdown file, or similar.

### Step 2 — Assess what you know

After reading any source document (or if only a name/description was provided), evaluate how well the five core PRFAQ inputs are covered:

| Input | What to look for |
|---|---|
| **Target customer** | A specific, named segment — not "anyone" or "government agencies" |
| **Core problem** | Described from the customer's perspective, with stated consequences |
| **Solution** | High-level approach, not just a feature list |
| **Current alternatives** | What customers do today instead, and why those fall short |
| **Launch scope / timing** | Approximate is fine |

### Step 3 — Ask only the questions that matter

**If a source document was provided:** Do not ask the five generic questions. Instead, summarize what you understood from the document in 3–5 bullet points, then ask only targeted follow-up questions to fill genuine gaps or sharpen vague areas. Frame them as: *"The brief mentions X — can you tell me more about Y?"* or *"I didn't find anything about Z — do you have a view on that?"*

Limit follow-up questions to the most important gaps (max 4–5 questions). It's better to draft with `[NEED: ...]` placeholders for minor gaps than to ask about everything.

**If no document was provided:** Ask these five questions before drafting:

1. **Who is the target customer?** (Be specific — not "everyone")
2. **What is the core problem they face?** (From *their* perspective, not the organization's)
3. **What is the solution?** (High level)
4. **Who are the current competitors or alternatives?** (What do customers do today instead?)
5. **What is the launch date / scope?** (Approximate is fine)

### Step 4 — Draft

Once you have enough context, produce the full PRFAQ in one pass. Flag remaining unknowns with `[NEED: ...]` placeholders rather than blocking on them.

---

## PRESS RELEASE (max 300 words — strictly enforced)

Write the press release in this exact order. Count words as you draft. The press release must not exceed 300 words — this constraint is a forcing function for clarity. Cut ruthlessly if needed.

### 1. Headline (this becomes the document title)
Format: `[ORGANIZATION] ANNOUNCES [PRODUCT/SERVICE] TO ENABLE [TARGET CUSTOMER] TO [ACHIEVE THIS BENEFIT]`

- One sentence. Customer benefit explicit, not feature-focused.
- A stranger should understand it in 5 seconds.
- No jargon.
- **This headline IS the document title. Do not add a separate doc title, product name header, or "PRFAQ" label above it.**

### 2. Subheadline
- One sentence expanding on the headline
- The subhedline should be normal text in italics
- Names the specific customer segment
- Adds a second benefit point not in the headline

### 3. Summary Paragraph (2–4 sentences)
- Dateline format: `[City, State] — [Launch Date] — [Media Outlet] today announced...`
- The dateline should be in bold
- Brief product overview written as if appearing in a news outlet
- Who it's for, what it does, why it matters

### 4. Problem Paragraph (2–4 sentences)
- Describe the top 2–3 customer pain points **entirely from the customer's perspective**
- Most painful problem first
- Be specific: name the consequence of the problem (wasted hours, lost money, failed outcomes)
- **CRITICAL: Zero mention of the solution. No hints. Pure problem.**
- Bad: "There is currently no tool that does X" (implies solution)
- Good: "Small business owners spend 11 hours per week manually reconciling invoices, causing 23% of payments to be made late"

### 5. Solution Paragraph (2–4 sentences)
- Address each problem from above, **in the same order**
- Required formula: *"Today, customers with this problem use [X, Y, Z]. Those solutions fall short because [specific gaps]. [Product] addresses this by [specific differentiators]."*
- Must be specific enough to "convict" the reader that it actually solves the problem
- Ho-hum solutions (marginally better than existing) = return to drawing board

### 6. Company/Organization Leader Quote
- Always attributed to **Amanda Renteria, CEO, Code for America**
- Explains **why** Code for America is solving this problem (mission connection)
- High-level solution approach + organizational commitment
- Must sound like something Amanda would actually say — grounded, direct, not marketing puff
- Format: `"[Quote]" — Amanda Renteria, CEO, Code for America`

### 7. How It Works (1–3 paragraphs)
- Walk through the customer journey: activation → onboarding → core experience
- Specific enough to be credible, tangible enough to picture using it
- For new features on existing products: explain integration with current workflows

### 8. Customer Quote
- Imaginary but authentic-sounding testimonial from a named, realistic customer persona
- Must reference a **specific pain point** from the problem paragraph
- Must show a **specific outcome** achieved (not "this changed my life!")
- The persona you choose signals your TAM — choose deliberately
- Format: `"[Quote]" — [First Name, Customer Descriptor]`

### 9. Call to Action (1–2 sentences)
- Single clear next step
- Include a URL or equivalent access point
- Example: "To join the beta, visit [product].org/early-access and sign up with your work email."

---

## EXTERNAL FAQs (Customer & Press)

Write as if a journalist covering the launch or a curious customer is asking. Answers: 2–5 sentences, plain language, no jargon.

Cover these questions (adapt wording to fit the product):

**Product Basics**
- What is [Product] and what does it do?
- Who is this designed for?
- How much does it cost / what is the pricing model?
- When is it available and how do I access it?

**Usage & Experience**
- How does it work? (step-by-step)
- How do I get started?
- How long does setup or onboarding take?
- What do I need in order to use this?

**Trust & Support**
- How is the product/service supported?
- How is my data handled / what are the privacy practices?
- What happens if something goes wrong?

**Differentiation**
- How is this different from [primary competitor or current alternative]?
- Why should I switch from what I'm using today?
- What are the limits or constraints?

**Value**
- How will I know it's working? How do I measure success?
- What results have early users seen?

---

## INTERNAL FAQs (Stakeholders, Leadership, Operations)

Write for an honest internal audience: finance, legal, engineering, operations, marketing, leadership. This section must be **optimistic but realistic** — it should show you have wrestled with the hard questions, not that you've avoided them.

Cover these questions:

**Market & Customer**
- What do customers currently use to solve this problem, and why are those solutions insufficient?
- What is the total addressable market (TAM) and how did you estimate it?
- What customer research supports this opportunity? (surveys, interviews, data)
- Is this solution compelling enough for customers to change their current behavior?

**Strategic Fit**
- Why is this strategically important to us now?
- What organizational objectives or OKRs does this achieve?
- What alternative approaches to this customer problem were considered, and why was this one selected?

**Business Case**
- What does success look like? What metrics will we track (leading and lagging)?
- What upfront investment is required? (people, technology, partners, infrastructure)
- What is the path to sustainability / return on investment?
- What are the per-unit economics?

**Risks & Failure Modes**
- What are the top 3 reasons this could fail?
- What assumptions must be true for this to succeed?
- What could cause customers to be dissatisfied despite initial adoption?
- What could cause us to be wrong about the market size or willingness to adopt?

**Execution & Operations**
- What new capabilities must we build or acquire that we don't currently have?
- What are the key technical or operational challenges?
- Are there regulatory, legal, or partnership dependencies?
- What cross-functional dependencies exist (teams, systems, vendors)?
- When should we recommend (or not recommend) this to customers?

**Rollout**
- What are the phases of rollout, and what triggers progression between phases?
- What operational metrics will we track ongoing?
- How does this integrate with our existing products or services?

---

## Quality checklist — review your draft against these

Before presenting the PRFAQ, silently check:

- [ ] Headline is understandable to a stranger in 5 seconds
- [ ] Headline is used as the document title — no separate title or "PRFAQ" label above it
- [ ] Press release is 300 words or fewer
- [ ] A specific customer is named — not "everyone" or "any organization"
- [ ] Problem paragraph has zero solution hints
- [ ] Solution paragraph acknowledges what customers use today and why they'll switch
- [ ] The solution is meaningfully better/faster/cheaper — not just marginally better
- [ ] Leader quote is attributed to Amanda Renteria, CEO, Code for America
- [ ] Leader quote sounds like something Amanda would actually say — grounded, not marketing puff
- [ ] Customer quote references a specific problem and specific outcome
- [ ] External FAQs pre-empt the obvious customer/journalist objections
- [ ] Internal FAQs include honest failure modes and risk analysis
- [ ] Multiple alternative solutions were considered (mentioned in Internal FAQs)
- [ ] Document is optimistic AND realistic — hard truths are not avoided

---

## Common mistakes to flag or avoid

- **Targeting everyone**: "This is for anyone who..." → force a specific segment
- **Ho-hum solution**: If the differentiator is "a little easier" or "slightly faster," return to problem framing
- **Ignoring competitors**: "There is no current solution" is almost never true — name what customers do today
- **Vague value props**: "saves time" → quantify: "reduces X from 4 hours to 15 minutes"
- **Solution in the problem section**: Remove any hint of your answer from the pain description
- **Generic customer quote**: Must sound like a real person with a real situation
- **Missing failure modes**: Internal FAQs that only show upsides signal the team hasn't thought hard enough
- **Document as pitch deck**: This is a truth-seeking document, not an advocacy pitch

---

## Output format

Read the template at `templates/prfaq-template.md` using the Read tool. Fill in every section using the user's input and answers to clarifying questions. Present the completed PRFAQ as clean, readable markdown.

After presenting the draft, also offer to:
1. Deepen any specific section
2. Sharpen the problem/solution framing
3. Add more FAQs for specific stakeholder audiences (e.g., legal, finance, engineering)
4. Tighten the press release if it exceeds 300 words