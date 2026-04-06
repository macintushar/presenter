# Slidev Presentation

This is a [Slidev](https://sli.dev) presentation project.

## Project Structure

```
.
├── slides.md          # ← EDIT THIS: Main slide content in Markdown
├── style.css          # ← EDIT THIS: Custom styles
├── public/            # Static assets (images, fonts, etc.)
│   └── .gitkeep
├── package.json       # Dependencies and scripts
└── README.md          # Project readme
```

## Getting Started

### Install Dependencies

```bash
bun install
```

### Start Dev Server

```bash
bun run dev
```

Opens at `http://localhost:3030`

### Build for Production

```bash
bun run build
```

Outputs to `dist/` folder.

### Export to PDF

```bash
bun run export-pdf
```

## Slide Content (slides.md)

Slides are written in **Markdown**. Use `---` to separate slides.

### Basic Slide

```markdown
# Slide Title

Content with **bold**, *italic*, and [links](https://example.com).

- Bullet point 1
- Bullet point 2
```

### Slide with Layout

```markdown
---
layout: center
class: text-center
---

# Centered Content
```

Available layouts: `default`, `center`, `cover`, `intro`, `two-cols`, `image-right`, `image-left`, `quote`

### Two-Column Layout

```markdown
---
layout: two-cols
---

## Left Column

Content here

::right::

## Right Column

Content here
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
```

### Code Blocks with Highlighting

```markdown
```ts {1-2|3|4}
function greet(name: string) {
  console.log(`Hello, ${name}!`)
}
```
```

The `{1-2|3|4}` syntax highlights lines 1-2 first, then line 3, then line 4 — step by step.

### Fragments (Step-by-Step Reveals)

```markdown
<v-clicks>

- First point
- Second point
- Third point

</v-clicks>
```

### Speaker Notes

Use HTML comments for speaker notes:

```markdown
## Slide Title

Content visible to audience.

<!--
This is only visible in speaker view.
Include your talking points here.
-->
```

## Styling (style.css)

The `style.css` file is loaded globally. Use UnoCSS/Tailwind classes or custom CSS:

```css
:root {
  --bg: #f5f5f4;
  --ink: #17171b;
}

.dark {
  --bg: #1a1a1a;
  --ink: #f5f5f4;
}

.slidev-layout {
  font-family: "Inter", sans-serif;
}
```

## Frontmatter Configuration

Set global options at the top of `slides.md`:

```yaml
---
theme: default          # default, seriph, apple
title: My Presentation
class: text-left
drawings:
  persist: false
transition: slide-left
mdc: true
---
```

## Available Themes

Built-in themes:
- `default` — Clean, minimal
- `seriph` — Serif fonts, elegant
- `apple` — Apple-style presentation

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `space` | Next animation or slide |
| `←` `→` | Previous / next slide |
| `o` | Toggle overview |
| `f` | Toggle fullscreen |
| `d` | Toggle dark mode |

## Best Practices

1. **Start with an outline** — list all slide titles first
2. **Keep slides concise** — one idea per slide
3. **Use layouts** — `two-cols`, `image-right`, `center` for variety
4. **Use code highlighting** — `{1-2|3|4}` to walk through code
5. **Add speaker notes** — use `<!-- -->` comments
6. **Organize assets** — place images in `public/` folder

## Resources

- [Slidev Documentation](https://sli.dev)
- [Slidev Themes](https://sli.dev/themes/gallery.html)
