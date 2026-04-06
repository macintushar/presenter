# My Presentation

A [Slidev](https://sli.dev/) presentation. Edit `slides.md` to change content, modify `style.css` for styling, or add images to `public/`.

## Getting Started

```bash
bun run dev
```

Your presentation opens at `http://localhost:3030` with hot reload enabled.

---

Want to create a new presentation? → [macintushar/presenter](https://github.com/macintushar/presenter)

## Files

| File | Purpose |
|------|---------|
| `slides.md` | Edit your slide content here (Markdown) |
| `style.css` | Customize colors, fonts, and layouts |
| `public/` | Place images, fonts, and static assets here |
| `SPEC.md` | Define presentation goals and context (optional) |

Reference images from `public/` as `/image.png` in your slides.

## Commands

| Command | Description |
|---------|-------------|
| `bun run dev` | Start dev server (opens browser) |
| `bun run build` | Build for production (outputs to `dist/`) |
| `bun run export-pdf` | Export to PDF |
| `bun run export-png` | Export to PNG images |

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `space` | Next animation or slide |
| `←` `→` | Previous / next slide |
| `o` | Toggle overview |
| `f` | Toggle fullscreen |
| `d` | Toggle dark mode |

## Styling

Edit `style.css` to customize appearance:

```css
:root {
    --bg: #f5f5f4;
    --ink: #17171b;
    --body: #2f3034;
}

:root.dark {
    --bg: #1a1a1a;
    --ink: #f5f5f4;
}
```

Toggle dark mode with `d` key. See [Slidev Styling](https://sli.dev/custom/directory-structure.html#style-js) for more options.

## Deploy

```bash
bun run build
```

Configure `--base /repo-name/` in `package.json` for GitHub Pages, then deploy the `dist/` folder.
