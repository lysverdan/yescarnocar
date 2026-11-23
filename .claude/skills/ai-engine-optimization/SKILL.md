---
name: ai-engine-optimization
description: >-
  Optimize content so AI search and answer engines (ChatGPT, Claude, Perplexity,
  Gemini, Google AI Overviews, Copilot, Bing Chat) cite, quote, and recommend it.
  This is "AI Engine Optimization" (AEO), also called generative engine optimization
  (GEO) or LLM SEO. Use this whenever the user wants content to be found, cited, or
  recommended by AI assistants, or asks to audit, score, or rewrite a blog post,
  article, landing page, product description, FAQ, help doc, or guide for AI
  discoverability, LLM parsing, "zero-click" answers, entity coverage, schema markup,
  or conversational / voice queries — even when they phrase it as "SEO for ChatGPT",
  "get cited by AI", "make this AI-friendly", "will an LLM recommend this page", or
  just paste a URL and ask how to make AI engines surface it. Also use to build or
  restructure FAQ and Q&A content for AI answers.
---

# AI Engine Optimization (AEO)

## What this does and why it's different from SEO

Traditional SEO optimizes to rank a blue link a human clicks. AEO optimizes to be the
**source an AI model quotes, cites, and recommends** inside a generated answer. The
"reader" is now two audiences at once: the human who must still find the content
useful, and the language model that extracts, compresses, and attributes it.

That changes what wins. AI engines favor content that:
- answers a specific question **directly and early**, in a self-contained passage they
  can lift verbatim without the surrounding page;
- states **concrete, verifiable facts** (numbers, dates, named entities, sources) they
  can ground a claim on;
- is **cleanly structured** (descriptive headings, short passages, lists, Q&A) so the
  right chunk is easy to isolate;
- demonstrates **authority and freshness** (named author, credentials, dates, citations)
  so the model trusts it enough to attribute.

Keep both audiences in mind the whole way through. Over-optimized, keyword-stuffed, or
robotic content loses on both fronts — models increasingly down-weight it, and humans
bounce.

## Gather the inputs (ask only for what you can't infer)

To do a real analysis you need five things. Don't interrogate the user — **infer what
you can from what they gave you**, then confirm. If they pasted a URL, fetch and read it
first. If they pasted raw content, read it. Only ask for what's genuinely missing or
ambiguous:

1. **The content** — the pasted text or a URL. (Required. If a URL, fetch it.)
2. **Primary topic / query** — the question or search this should win. Often inferable
   from the content; propose one and confirm.
3. **Target audience** — who is asking. Infer from the content's level and framing;
   confirm.
4. **Goal** — inform, educate, convert, compare, drive a signup, etc. Infer from CTAs
   and framing; confirm.
5. **Format** — blog post, product page, FAQ, guide, landing page, docs. Usually
   obvious from the content.

A good opening move when something's missing: "I read the page — it looks like a
[format] aimed at [audience] to [goal], targeting the query '[query]'. Correct, or want
to steer any of those?" Then proceed. Don't block the whole analysis waiting for a
perfect brief.

## The analysis workflow

1. **Read the whole piece** before judging anything. Note its actual structure,
   headings, claims, sources, dates, and where a model would (or wouldn't) find a clean,
   liftable answer.
2. **Run it against the AEO checklist** below, category by category.
3. **Produce the report** in the exact output format below.
4. **Rewrite one section** as a concrete worked example, in the content's own voice —
   not a generic template. Show, don't just tell.

## AEO checklist

Assess the content against these four categories. For each, note what's strong and
what's missing — you'll compress this into the report.

### 1. Structure & formatting (can a model isolate the answer?)
- A concise **TL;DR / direct-answer summary** near the top that answers the primary
  query in 2–4 sentences, self-contained enough to be quoted alone.
- **Descriptive H2/H3 headings phrased as the questions people actually ask** ("How much
  does X cost?" beats "Pricing").
- **Short, self-contained passages** — a model lifts a paragraph without the rest of the
  page, so each key paragraph should stand on its own.
- **Lists and tables** for enumerable or comparative information (steps, criteria,
  specs, pros/cons) — these are disproportionately easy for models to extract cleanly.
- **Explicit Q&A pairs** for anything users phrase as a question.
- A **table of contents** for long pieces (helps both chunking and humans).

### 2. Content quality (will a model trust and ground on it?)
- **Direct, authoritative answers first**, elaboration after — don't bury the answer
  under preamble.
- **Specific data, numbers, and dates** instead of vague claims ("cuts cost ~30%" beats
  "saves money"). Models cite the specific.
- **Natural, conversational phrasing** that mirrors how people ask — because that's what
  the query embedding matches against.
- **Plain-language definitions** of technical terms, close to first use.
- **Concrete examples and use cases.**
- **Comparisons** where the reader is weighing options (vs. alternatives, vs. doing
  nothing).

### 3. Semantic / topical coverage (does it own the whole topic?)
- **Cover the topic cluster, not one keyword** — the obvious question plus the adjacent
  ones a curious asker follows up with.
- **Answer the related subquestions** explicitly (these become the chunks cited for
  long-tail queries).
- **Entity-rich language** — name the real brands, products, people, standards, and
  concepts. Entities are how models connect your content to a knowledge graph.
- **State relationships and context** (X is a type of Y; X is used for Z; X differs from
  W because…) so the model understands where this sits.
- **Schema / structured-data recommendations** where they fit: `FAQPage`, `HowTo`,
  `Article`, `Product`, `Organization`, `BreadcrumbList`. Recommend the specific type;
  note if it's already present.

### 4. Citations & authority (will a model attribute to it?)
- **Links to authoritative primary sources** for factual claims.
- **Visible author + credentials / expertise** (or an organization with a reason to be
  trusted on this).
- **Publication and last-updated dates.** Freshness is a strong trust signal for AI
  answers.
- **Original data or research**, where it exists — unique, citable facts are the single
  best way to become the cited source.
- **Proper attribution** of borrowed facts and quotes.

## Output format

Deliver the analysis in exactly this structure:

```
## AEO Score: X/10
One-sentence justification.

## Strengths
- What's already working for AI discoverability (3–5 bullets, specific to this content).

## Priority Fixes (do these first)
1. The single highest-leverage change, with the why.
2. …
3. …
4. …
5. …
(Five concrete, specific changes — not generic advice. Each should name the exact
section/line and what to do.)

## Content Gaps
- Questions, subtopics, or entities to add that the piece doesn't yet cover — framed as
  the queries they'd help win.

## Structural Recommendations
- How to reorganize for cleaner AI parsing (heading changes, where to add the TL;DR,
  what to turn into a list/table/Q&A, schema to add).

## Sample Optimized Section
A real rewrite of one weak section from THIS content, in its own voice, showing the
principles applied. Include a one-line note on what changed and why.
```

Scoring guide (keep it honest and calibrated, not flattering):
- **1–3**: wall of prose, no direct answers, no structure, no sources/dates.
- **4–6**: decent content but buried answers, generic headings, thin sourcing — the
  common case.
- **7–8**: direct answers, good structure and entities, some authority signals; a few
  gaps.
- **9–10**: genuinely the most complete, clear, quotable, and authoritative source on
  the query. Rare — don't hand it out.

## Principles that keep this honest and effective

- **Serve the human first.** If a change helps extraction but hurts a real reader, it's
  wrong. AI engines are converging on what good readers like anyway: clarity, directness,
  evidence.
- **Never fabricate.** Do not invent statistics, studies, dates, quotes, or sources to
  "add authority." If the content needs a stat or citation, say *what kind to add and
  where to find it* — flag it as `[add a real figure/source here]`, never a made-up one.
  A fake citation is worse than none: it destroys exactly the trust AEO is built on.
- **Optimize for the zero-click answer.** Assume the model may quote one passage and show
  nothing else of the page. Make the key passages win on their own.
- **Write for conversational and voice queries** — full-question phrasing, not clipped
  keywords.
- **Don't over-optimize.** Keyword stuffing, repetitive Q&A padding, and robotic phrasing
  get down-weighted and read badly. Comprehensive and clear beats dense and gamed.
- **Match the user's brand voice** when rewriting. If a project voice or style guide is
  in context, follow it; AEO is about structure and substance, not flattening tone.

## Quick audit (when the user wants a fast pass, not the full report)

If the user just wants a gut check, answer these five and give the score — skip the long
report unless they want it:
1. Is there a direct, quotable answer to the main query in the first ~100 words?
2. Do the headings read as the questions people ask?
3. Are there specific numbers, dates, and named entities a model could cite?
4. Is there a visible author/date and at least one authoritative source?
5. Is key info in lists/tables/Q&A rather than only prose?
Each "no" is a priority fix.
