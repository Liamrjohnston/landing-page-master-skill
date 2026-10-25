---
name: landing-page-master
description: Fix a landing page that gets visits but few bookings, enquiries or sales, or build a new one. Returns one finished phone-first HTML page from the owner's facts, a short audit and an honest handoff.
metadata:
  tags: [business, skill]
  version: "2.1.0"
---

# Landing Page Master

Use this when an owner says people visit but nobody books, buys or gets in touch, sends a page to fix, or asks for a new landing page.

The goal is a page that looks like a well-funded small business paid a good designer for it, says everything a buyer needs in plain sight, and lets a phone visitor act in one tap, using only what the owner told you. Use your own full design judgement. These rules mark what strong pages get right and weak ones miss; they are not a template. Work silently, then answer in the shape under "Hand it back".

Scope: a page supplied means audit and repair it. "Just audit it" means findings and exact changes, no new HTML. No page means build new. Never publish, submit, send, track or change an account.

## 1. Get every fact

List for yourself: what is sold, and every price, add-on, plan, instalment, total, deposit, refund and guarantee; every place served; who it is for and not for; where visitors come from and the words they saw there; every route a visitor can use (booking, checkout, phone, text, email, profile, resources) and whether each works; every piece of proof in its exact words; every limit; the questions buyers ask with the owner's answers; and the photos or files the owner confirms. The owner's brief beats the old page whenever they disagree.

Before you write, check that every one of those facts has a home on the page. Losing a price, a payment option, a purchase link or a place served is the most expensive mistake a repair can make.

## 2. Name what costs the most

Walk the old page as a phone visitor. Name the few faults that lose the most people: a headline that ignores where they came from, a dead button, a hidden price, a missing payment option, a fake claim, a narrowed or inflated area, answers hidden or empty, a broken image, a form that sends nowhere, unreadable contrast. Keep what is true and works: working links and files, real quotes and prices, the owner's true wording. Do not keep a weak design. Replace it with a complete one.

## 3. A finished design, not a wireframe

The page should feel rich and complete at both phone and desktop width.

- **First screen.** Lead with what the visitor came for, in their words: the ad's promise, the searched service and the place, or the pain the brief describes. Under it, one plain line on who it is for, the price or starting price, the main button and the real second route. On desktop, use the width: a two-column hero with a strong side panel (the offer card, a short "what's included" card, the owner's photo, or a crafted inline SVG of the trade) rather than a lone narrow column.
- **Visual system.** A palette drawn from the trade, a clear type scale with a confident display size for headings, small uppercase section labels, tinted section bands, cards with borders or soft shadows, generous spacing, and a page container about 1100 to 1200 px wide. Body text 16 px or larger and readable line length inside the cards and columns.
- **Sections the brief supports**, in the order that answers doubts as they arise: a proof strip (rating with count and source, years, insurance, memberships, exactly as stated), what you get, the offer and prices, how it works in three or four numbered steps, the owner's quotes as cards, a short owner note in their voice, answers, a final call to action, a footer. Give each section a heading that says something specific about this business. Write as much as the facts justify: complete, never padded.
- **Persistent action on phones.** A slim bar fixed to the bottom of the screen below 720 px wide, with the main action and the real second route (call, text). Add bottom padding to the page so it never covers content, and keep it out of the way of form fields. On desktop the header carries the action.
- No pop-ups, countdowns or fake urgency.

## 4. Answers in plain sight

- Answer the questions the brief names (price, area, timing, what to bring or own, what happens next, refunds) as **visible** text: an answers grid of short cards or a two-column list. Do not hide the key answers in `<details>` or accordions. A fold-out is acceptable only for minor extras after the key answers are already visible.
- Put each answer near the doubt it resolves too, so the area appears beside the booking button and the refund appears beside the price.
- **The service area, in full.** Name every place the owner serves in the hero's top line or right under the headline, and again near the contact section. Never shorten it to the first or biggest place, and never widen it.

## 5. The offer, complete

- Build a clear offer block: each option as its own card with its name, exact price, what is included, any payment plan with its instalment amount **and** total exactly as stated, and its own button to its own working purchase or booking link.
- If there are several purchase links (one-time, payment plan, tiers), every one appears as its own clearly named button. Never collapse them into one.
- Put the guarantee, refund or deposit terms on or beside the card in normal readable type.
- Every price, add-on, plan, instalment and total the owner gave appears exactly; none is added.

## 6. Routes that work, and nothing that pretends

- Use only the links, numbers and addresses supplied. Never invent a URL, a booking system or a service.
- Every route works with JavaScript off: plain links and native elements. Phone is `tel:`, text is `sms:` with a starter body, email is `mailto:` with a subject and a body listing what the owner needs. Show the number or address itself as a link too.
- Never put a disabled form where a working route exists. Remove forms that post nowhere and link the working route instead. If the brief asks for a placeholder, build a labelled form with an obvious placeholder `action`, its fields in a `<fieldset disabled>`, one line saying it is not connected yet, and the working route beside it.
- Say a gap once, in one plain line where it matters. Do not repeat "nothing is sent" or "not connected" notes around the page.
- Keep every working destination that still serves a purpose, labelled honestly. Remove dead or fake ones and name each removal in the audit.

## 7. Assets

- Use the owner's confirmed photos at the exact paths given, with specific `alt`, `width`, `height` and a background colour.
- Remove any image, logo or file the brief does not confirm, and say so in the audit. Replace it with a crafted inline SVG illustration of the trade marked `aria-hidden="true"`, sized to fill its panel, never something that could pass for the owner's real work.
- One HTML file. No external fonts, scripts, trackers or remote images.

## 8. Accessible everywhere

A skip link, one `h1`, visible focus styles, real labels on every input, tap targets at least 44 px, passing contrast, and a layout that works from 360 px to desktop with no sideways scroll.

## 9. Truth rules

Run every line against these. Remove anything that fails.

- Only the owner's facts. No invented reviews, counts, ratings, logos, awards, guarantees, response times or "best in town". Remove fakes the old page had and say so.
- Quotes exact, with the names and places the owner gave. Changing a quote's wording counts as inventing it.
- Limits respected. Never promise outside the area, capacity, ages or scope. No medical, income, savings or speed promises. No fake scarcity or deadlines.
- Never write "coming soon" or any date or future state the owner did not give.
- No claimed tests. You only read the code.

## 10. Check it in your head

Walk the code at 390 px and at desktop. Is every price, plan total, purchase link and place from your fact list on the page? Are the key answers visible without tapping? Does the fixed phone bar leave content uncovered? Does the desktop first screen use both columns? Does every route work with script off? Is anything wider than the screen? Fix what fails.

## 11. A small example

A tailor in Regina gets visitors from flyers and books fittings through a working scheduler.

Before: `<h1>Crafted With Passion</h1> <a href="#" onclick="openBooking()">Learn more</a>`

After, first screen:

```html
<section class="hero">
  <div>
    <p class="label">Stitchwell Alterations · Downtown Regina and Harbour Landing</p>
    <h1>Clothing alterations in Regina, booked online</h1>
    <p>Hems, zips, taking in and letting out, usually ready in a week.</p>
    <p class="price">Hems from $18 <span>fitting included</span></p>
    <a class="btn" href="https://book.example/stitchwell">Book a fitting</a>
    <a href="tel:+13065550142">Or call (306) 555-0142</a>
  </div>
  <aside class="card">
    <h2>What a fitting includes</h2>
    <ul><li>Pinning while you wear it</li><li>A written price before work starts</li><li>Pickup date on the spot</li></ul>
  </aside>
</section>
<nav class="phone-bar"><a href="https://book.example/stitchwell">Book a fitting</a><a href="tel:+13065550142">Call</a></nav>
```

## Hand it back

Answer in this order:

1. **What was wrong and what changed**: a table of at most six rows. Each row quotes the old page's text or markup, then names what you changed and where. Then one "Kept:" line.
2. **The page**: the complete HTML in one code block.
3. **Before you publish**: at most four short lines. Real blockers first (a tool to connect, a fact to confirm), then one sentence saying no browser, phone or delivery tests were run.

Keep everything outside the HTML to about 200 to 300 words. Plain words, no emoji, no hype, and no claim that the page will convert.
