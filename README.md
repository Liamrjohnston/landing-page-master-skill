# Landing Page Master

A free Claude skill that audits your landing page and fixes it.

People visit. Nobody books, buys or gets in touch. Landing Page Master walks your page the way a visitor on a phone does, names the few problems that cost you the most, and hands back the finished page: one complete HTML file built only from your real facts and working links.

It checks the headline, the copy, the graphic design, the layout, the phone experience, the prices and offer, the proof, the answers buyers need and every button. It keeps what already works. No page yet? Give it your business facts and it builds one.

**Full beginner guide:** [Landing Page Master setup guide](https://promptible.notion.site/PAGE-Landing-Page-Master-setup-guide-4046a397f23b81ec987dd1fabc404562)

## Install in the Claude app (easiest)

1. Download [landing-page-master.zip](https://github.com/Liamrjohnston/landing-page-master-skill/releases/download/v2.1.0/landing-page-master.zip). Leave it zipped.
2. In Claude, open **Customize > Skills**.
3. Click **+**, then **Create skill**, then **Upload a skill**, and pick the ZIP.
4. Switch the skill on.

Code execution has to be turned on in your Claude settings. On Team and Enterprise plans an admin may need to allow custom skills. Steps from [Claude's help center](https://support.claude.com/en/articles/12512180-use-skills-in-claude).

## Install in Claude Code

Paste this into Claude Code:

```
https://github.com/Liamrjohnston/landing-page-master-skill.git
Clone this and add the skill.
```

Or do it yourself:

```bash
git clone https://github.com/Liamrjohnston/landing-page-master-skill.git
cd landing-page-master-skill
bash install.sh
```

That copies `skills/landing-page-master` into `~/.claude/skills/`. It asks before replacing an existing copy. Start a new Claude Code session, then type `/landing-page-master`.

> **Note for Claude:** to install this skill, copy the folder `skills/landing-page-master` (it contains `SKILL.md`) into `~/.claude/skills/`, creating that folder if needed. Don't overwrite an existing folder without asking. Then tell the user to start a new session and type `/landing-page-master`.

## Use it

Give Claude your page (a URL it can open, the HTML, or screenshots) and your business facts, then paste this:

```text
Use the Landing Page Master skill. Audit and fix my landing page.

Here is my page (pick one, the more the better):
- Page URL:
- Or the page's HTML pasted below
- Or screenshots of the whole page, top to bottom, on phone and desktop

About my business:
- What I sell, exactly:
- Every price, add-on, plan, deposit, payment plan and total:
- Refund, guarantee or deposit terms:
- Every place I serve (towns, areas, online):
- Who it is for, and who it is not for:
- Where visitors come from (an ad, a Google search, an Instagram post) and the exact words they saw there:
- The one thing I want visitors to do:
- My working links and contact details (booking link, checkout link, phone, text, email):
- Real proof in its exact words (reviews with names, ratings with the count and source, years in business, insurance, memberships):
- The questions buyers always ask, with my answers:
- Photos I own and want used, with their file names:
- Limits (capacity, ages, areas, things I do not do):
- What is not working right now:
- What must stay exactly as it is:

Give me the full result, not a summary:
1. A table of the biggest problems. For each one, quote the old page's
   words or code, then say what you changed and where. Then tell me what you kept.
2. The complete finished page as one HTML file, every section written in full,
   ready to open in a browser.
3. What I still need to do before I publish: missing links, facts to confirm,
   tools to connect.

Use only the facts I gave you. Do not invent reviews, numbers, links,
deadlines or results. If something important is missing, ask me before you write.
```

The guide has three more prompts: audit only, fix one weak part, and build a new page.

## What you get back

1. A short table of what was wrong and what changed. Each row quotes the old page.
2. The complete page as one HTML file. No outside fonts, scripts or trackers.
3. A few lines on what to do before you publish, like a link to connect or a fact to confirm.

## What it will not do

It won't invent reviews, ratings, counts, logos, guarantees, deadlines or results. It won't promise outside your area or limits. It won't add fake "sent" messages or forms that go nowhere. It doesn't publish anything, send anything or change any account. It only reads and writes code, so it can't promise the page will convert. Open the page on your own phone and check every link before you publish.

## How it was tested

One blind test, three made-up businesses held back from development (a furnace tune-up, an online guitar course and an EV charger install), three runs each, so nine judgments.

Codex built each page four ways: with this skill, with a bundle of three public skills (Anthropic's frontend-design plus Corey Haines' copywriting and conversion skills), with a one-line prompt, and with no skill. A separate AI model judged the pages without knowing which was which, scoring them out of 10.

Against the bundle of public skills: **5 wins, 4 ties, 0 losses.** Against the one-line prompt: 6 wins, 3 ties, 0 losses. Against no skill: 4 wins, 2 ties, 3 losses.

Limits, so you know what this does and doesn't show:

- The pages were made by Codex, not Claude. The Claude test hasn't been run yet.
- The businesses were made up. This is not a measure of real bookings or sales.
- On three earlier development cases, which aren't part of the result above, it did worse: against the bundle 1 win, 5 ties, 3 losses.
- The judge's most common complaint about its pages was length: long, repetitive pages on a phone.
- It scored 10 out of 10 for honesty in every judgment.

The `SKILL.md` here is the tested version 2.1.0. The only change is a shorter description line, so it fits the Claude app's 200-character limit. The instructions are the same.

## Credits and license

Written from scratch after reading public skills, books and web standards. See [CREDITS](CREDITS.md). MIT. See [LICENSE](LICENSE).
