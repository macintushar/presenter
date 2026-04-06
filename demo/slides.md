---
theme: default
title: Presenter Demo
class: text-left
colorSchema: auto
drawings:
  persist: false
transition: slide-left
mdc: true
---

# Presenter Demo

### Create beautiful presentations with Markdown, powered by AI

---
layout: center
class: text-center
---

# What is Presenter?

<v-clicks>

- A streamlined workflow for creating presentations
- Built on [Slidev](https://sli.dev/) — Markdown-based slides
- Designed for AI-assisted creation
- Write slides, iterate fast, ship quickly

</v-clicks>

---
layout: two-cols
---

## Features

<v-clicks>

- **Markdown-native** — Write slides as easily as docs
- **Code highlighting** — Syntax highlighting with step-by-step reveals
- **Live editing** — Hot reload as you type
- **Dark mode** — Built-in dark mode support
- **Export options** — PDF, PNG, or host online

</v-clicks>

::right::

## Philosophy

<v-clicks>

- Minimal setup
- Clean typography
- Git-friendly
- AI-first workflow
- Rapid iteration

</v-clicks>

---

## Code Highlighting

Present code step by step:

```ts {1-2|3-4|5-6|all}
const greeting = "Hello, World!"

function welcome(name: string) {
  return `Welcome, ${name}!`
}

console.log(welcome("Developer"))
```

<!--
Use arrow keys or space to advance through code blocks.
Each line group highlights sequentially.
-->

---

## Code with Line Numbers

```ts {2,4} showLineNumbers
const feature = "Line numbers"    // not highlighted
const highlighted = true          // highlighted
const another = "normal line"     // not highlighted
const important = "see this one"  // highlighted
```

Specify line numbers with `showLineNumbers` and highlight specific lines with `{2,4}`.

---

## Two-Column Layout

Perfect for comparisons:

<div class="split-2">
<div>

### Option A
- Faster development
- Simpler syntax
- Less overhead

</div>
<div>

### Option B
- More control
- Custom layouts
- Advanced features

</div>
</div>

---
layout: image-right
image: https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=800
---

## Image Layouts

Images can be placed on the left or right side of your slide.

Just specify `layout: image-right` or `layout: image-left` and provide the `image` path.

---
layout: quote
---

"Good presentations tell a story. Great presentations let the audience discover that story themselves."

— Someone Wise

---

## Typography & Styling

The template includes custom **typography**:

- **Bold text** uses `**text**`
- *Italic text* uses `*text*`
- `Inline code` uses backticks

Classes available:

<span class="muted">Muted text</span> — `.muted`

<span class="strong">Strong text</span> — `.strong`

<span class="lead">Lead paragraph</span> — `.lead`

<span class="fine">Fine print</span> — `.fine`

---

## Dark Mode

<div id="toggler"></div>

This presentation supports both light and dark mode.

Press `d` to toggle dark mode.

The styling automatically adjusts:
- Backgrounds
- Text colors
- Borders
- Code blocks

---

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `space` | Next animation or slide |
| `←` `→` | Previous / next slide |
| `o` | Toggle overview |
| `f` | Toggle fullscreen |
| `d` | Toggle dark mode |

---
layout: center
class: text-center
---

# Ready to Create?

### Start your own presentation

```bash
./new.sh my-topic
cd presentations/my-topic
bun run dev
```

---
layout: center
class: text-center
---

# Thank You

### Questions?

<div class="muted" style="margin-top: 2rem;">

Created with [Slidev](https://sli.dev/) + OpenCode

</div>
