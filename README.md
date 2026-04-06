# Presenter

A streamlined & opinionated workflow for creating presentations with [Slidev](https://sli.dev/) and OpenCode to help refine content within slides.

## Requirements

- [Bun](https://bun.com/) - JavaScript runtime and package manager

## Quick Start

```bash
# Create a new presentation
./new.sh my-presentation

# Navigate and start developing
cd presentations/my-presentation
bun run dev
```

Your presentation opens at `http://localhost:3030` with hot reload enabled.

## Project Structure

```
presenter/
├── new.sh                        # Scaffold script
├── template/presentation/        # Template copied for each new presentation
│   ├── slides.md
│   ├── style.css
│   └── package.json
└── presentations/                # Your presentations
    └── <name>/
```

> **Note:** The `presentations/` directory is intentionally excluded from git (see `.gitignore`). This keeps your actual presentations private while versioning the template and tooling.

## Writing Slides

Slides are written in Markdown with YAML frontmatter. See the [Slidev documentation](https://sli.dev/) for comprehensive guides on:

- Markdown syntax and slide separators
- Layouts (`center`, `two-cols`, `image-right`, etc.)
- Code blocks with syntax highlighting
- Animations and transitions
- Speaker notes
- Export options

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

Edit `style.css` to customize appearance. The template includes:

- Dark mode support (toggle with `d` key)
- Custom bullet styling with `↪` markers
- Design tokens for consistent theming
- Utility classes: `.muted`, `.strong`, `.lead`, `.meta`, `.demo-card`

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

## Deployment (GitHub Pages)

Configure the base path in `package.json` for your repository:

```json
{
  "scripts": {
    "build": "slidev build --base /repo-name/"
  }
}
```

Then build and deploy the `dist/` folder.
