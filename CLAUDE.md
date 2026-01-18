# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a single-page mood board template for the Airlines Hotel coffee table book project. It's a static HTML/CSS/JS site with no build system or external dependencies.

## Running the Project

Open `index.html` directly in a browser, or serve with any static file server:
```bash
python -m http.server
# or
npx serve
```

No build process, compilation, or bundling required.

## Architecture

**Single File Structure**: Everything is contained in `index.html`:
- CSS styles: lines 8-1206 (embedded in `<style>` block)
- HTML content: lines 1207-1650 (page structure)
- JavaScript: lines 1651-1717 (embedded in `<script>` block)

**Fonts**: Cormorant Garamond and Merriweather are embedded as base64 - no external font requests.

## CSS Custom Properties

Brand colors defined in `:root`:
- `--color-dark-blue`: Primary dark blue (#1a2a3a)
- `--color-yellow-gold`: Accent gold (#c9a961)
- `--color-mud-brown`: Brown tone (#6b5b4f)
- `--color-forest-green`: Green accent (#2d4a3e)
- `--color-cream`: Background cream (#faf6f0)
- `--color-warm-white`: Light backgrounds (#fefefe)

## Page Sections

1. **Hero**: Full-viewport intro with chevron scroll indicator
2. **Overview**: 3-card grid explaining the project
3. **Content Themes**: Heritage & Foundation, Community & Stories sections
4. **Option A & Option B**: Two identical mood board templates with:
   - Color palette slides
   - Quote layout options
   - Typeface showcases
   - Grid layout examples
5. **Footer**

## JavaScript Features

- Navbar scroll detection (adds `.scrolled` class at 50px scroll)
- Mobile hamburger menu toggle
- Intersection Observer for scroll-triggered `.reveal` animations
- Smooth scroll for anchor links with navbar offset
- Staggered reveal delays (`.reveal-delay-1`, `.reveal-delay-2`, `.reveal-delay-3`)

## Making Changes

- **Add new sections**: Insert after the divider element around line 1312
- **Extend mood boards**: Add slides within the existing template sections
- **Modify colors**: Update CSS custom properties in `:root`
- **Update navigation**: Edit navbar links and corresponding section IDs
- **CSS sections**: Well-commented blocks for each component

## Testing

Manual browser testing only - no automated test suite. Test across viewports for responsive behavior.
