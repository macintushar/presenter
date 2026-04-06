# Presenter — OpenCode Agent Instructions

You are an expert presentation creator using **Slidev** — a Markdown-based presentation framework for developers.

## Project Structure

```
presenter/
├── new.sh                    # Scaffold script: ./new.sh <name>
├── template/presentation/    # Template for new presentations
├── presentations/            # All presentations live here
│   └── <name>/
│       ├── SPEC.md           # ← Source of truth: presentation context & goals
│       ├── slides.md         # ← EDIT THIS: slide content in Markdown
│       ├── style.css         # ← EDIT THIS: custom styles
│       ├── public/           # Static assets (images, fonts, etc.)
│       └── package.json
```

## Presentation Context (SPEC.md)

**Always create a `SPEC.md` file** in each presentation directory as the source of truth. This ensures consistency across sessions and provides context for AI-assisted creation.

### SPEC.md Template

```markdown
# Presentation: [Name]

## Metadata
- **Author**: [Your name]
- **Created**: [Date]
- **Last Updated**: [Date]
- **Status**: [draft / in-progress / complete]

## Purpose
[What is this presentation for? Conference talk, internal meeting, workshop, etc.]

## Audience
[Who will see this? Technical level, familiarity with topic, expectations]

## Goals
[What should the audience learn or do after this presentation?]

## Key Messages
[2-4 main takeaways]

## Outline
1. [Slide title] - [Brief description]
2. [Slide title] - [Brief description]
...

## Assets Needed
- [ ] Image: [description]
- [ ] Diagram: [description]
- [ ] Code example: [description]

## References
- [Links to relevant docs, articles, etc.]

## Notes
[Any additional context or constraints]
```

## Workflow

1. **Create presentation context**: Create `SPEC.md` first to define goals and audience
2. **Create presentation**: Run `./new.sh <presentation-name>` from the root
3. **Edit slides**: Modify `presentations/<name>/slides.md` — this is the primary file you edit
4. **Customize styles**: Modify `presentations/<name>/style.css`
5. **Add images**: Place in `presentations/<name>/public/` and reference as `/filename.png`
6. **Run dev server**: `cd presentations/<name> && bun run dev` → opens at `http://localhost:3030`

**Important**: Before making changes to slides, always read `SPEC.md` to understand the presentation's purpose and constraints.

## Workflow

1. **Create a new presentation**: Run `./new.sh <presentation-name>` from the root
2. **Edit slides**: Modify `presentations/<name>/slides.md` — this is the primary file you edit
3. **Customize styles**: Modify `presentations/<name>/style.css`
4. **Add images**: Place in `presentations/<name>/public/` and reference as `/filename.png`
5. **Run dev server**: `cd presentations/<name> && bun run dev` → opens at `http://localhost:3030`

## Frontmatter Configuration

The first slide's frontmatter sets global options:

```yaml
---
theme: default          # Theme: default, seriph, apple, etc.
title: My Presentation  # Presentation title
class: text-left        # Global CSS classes
drawings:
  persist: false        # Persist drawings?
transition: slide-left # Slide transition
mdc: true              # Enable MDC syntax
---
```

Available transitions: `slide-left`, `slide-right`, `slide-up`, `slide-down`, `fade`, `fade-out`, `fade-zoom`, `zoom`, `none`

## Slide Content Format (slides.md)

Slides are written in **Markdown**. Use `---` to separate slides.

### Basic Slide

```markdown
# Slide Title

Content goes here with **bold**, *italic*, and [links](https://example.com).

- Bullet point 1
- Bullet point 2
```

### Slide with Layout

Use frontmatter on any slide to change layout:

```markdown
---
layout: center
class: text-center
---

# Centered Content

This slide is centered.
```

Available layouts: `default`, `center`, `cover`, `intro`, `two-cols`, `image-right`, `image-left`, `quote`

### Two-Column Layout

```markdown
---
layout: two-cols
---

## Left Column

- Point A
- Point B

::right::

## Right Column

- Point C
- Point D
```

### Images

Place images in `public/` folder, reference with `/filename.png`:

```markdown
![Alt text](/myimage.png)
```

Or use layouts:

```markdown
---
layout: image-right
image: /myimage.png
---

## Slide Title

Content appears on the left, image on the right.
```

### Code Blocks with Highlighting

```markdown
## Code Example

```ts {1-2|3|4}
function greet(name: string) {
  const message = `Hello, ${name}!`
  console.log(message)
}
```
```

The `{1-2|3|4}` syntax highlights lines 1-2 first, then line 3, then line 4 — step by step as you advance.

### Code with Line Numbers

```markdown
```ts {1,3-5} showLineNumbers
const a = 1      // highlighted
const b = 2      // not highlighted
const c = 3      // highlighted
const d = 4      // highlighted
const e = 5      // highlighted
```
```

### Fragments (step-by-step reveals)

```markdown
## Build Up

<v-clicks>

- First point
- Second point
- Third point

</v-clicks>
```

Or individually:

```markdown
- First point <v-click/>
- Second point <v-click at="2"/>
```

### Speaker Notes

Use HTML comments for speaker notes:

```markdown
## Slide Title

Content visible to audience.

<!--
This is only visible in speaker view.
Include your talking points here.
You can use **markdown** in notes.
-->
```

### Links to Other Slides

```markdown
[Go to slide 3](3)
[Go to slide by name](#my-slide)
```

## Styling (style.css)

The `style.css` file is loaded globally. Use UnoCSS/Tailwind classes or custom CSS:

```css
:root {
  --bg: #f5f5f4;
  --ink: #17171b;
}

/* Dark mode colors (Slidev handles switching automatically) */
:root.dark,
html.dark,
.dark {
  --bg: #1a1a1a;
  --ink: #f5f5f4;
}

.slidev-layout {
  font-family: "Inter", sans-serif;
}

.slidev-layout h1 {
  @apply text-4xl font-bold;
  color: var(--ink);
}

.my-custom-class {
  background: var(--bg);
}
```

## Available Themes

Built-in themes (set in frontmatter):
- `default` — Clean, minimal
- `seriph` — Serif fonts, elegant
- `apple` — Apple-style presentation

To change theme, edit the frontmatter:
```yaml
---
theme: seriph
---
```

Install additional themes: `bun add @slidev/theme-dracula`

## Commands

| Command | Description |
|---------|-------------|
| `./new.sh <name>` | Create new presentation |
| `bun run dev` | Start dev server (opens browser) |
| `bun run build` | Build for production (outputs to `dist/`) |
| `bun run export-pdf` | Export to PDF |
| `bun run export-png` | Export to PNG images |

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `space` | Next animation or slide |
| `←` `→` | Previous / next slide |
| `↑` `↓` | First / last slide |
| `o` | Toggle overview |
| `f` | Toggle fullscreen |
| `d` | Toggle dark mode |
| `c` | Timer / clock overlay |

## Best Practices forCreating Presentations

1. **Start with an outline** — list all slide titles first, then fill in content
2. **Keep slides concise** — one idea per slide, use bullet points not paragraphs
3. **Use layouts** — `two-cols`, `image-right`, `center` for visual variety
4. **Use code highlighting** `{1-2|3|4}` to walk through code line by line
5. **Add speaker notes** — use `<!-- -->` comments for detailed talking points
6. **Use fragments** — `<v-clicks>` to reveal points progressively
7. **Organize assets** — place images in `public/` folder

## Common Patterns

### Title Slide

```markdown
---
layout: center
class: text-center
---

# Presentation Title

Subtitle or tagline

**Your Name**
```

### Image Slide

```markdown
---
layout: image
image: /hero.png
class: text-white
---

# Title on Image
```

### Quote Slide

```markdown
---
layout: quote
---

"Great quote here."

— Author
```

### Comparison Slide

```markdown
---
layout: two-cols
---

## Option A
- Pro 1
- Pro 2

::right::

## Option B
- Pro 1
- Pro 2
```

## Export Options

```bash
# Export to PDF (default)
bun run export-pdf

# Export specific slides
bun run export -- --range 1-5

# Export with dark theme
bun run export -- --dark

# Export to PNG images
bun run export-png
```

## Troubleshooting

**Images not loading**: Ensure they're in `public/` folder and referenced as `/image.png`

**Styles not applying**: Use `.slidev-layout` prefix for custom classes

**Build fails**: Try `rm -rf node_modules && bun install`