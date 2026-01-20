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

**File Structure**:
- `index.html` - Main HTML document (~23KB)
- `styles.css` - All CSS styles (~36KB)
- `script.js` - JavaScript functionality (~3KB)
- `fonts/` - Woff2 font files (Cormorant Garamond, Merriweather)
- `images/` - Photo assets extracted from original

**Build Scripts** (for reference, not needed for normal development):
- `build-split.js` - Script that was used to split the original monolithic HTML file

## CSS Custom Properties

Brand colors defined in `:root`:
- `--dark-blue`: Primary dark blue (#1A365D)
- `--yellow-gold`: Accent gold (#D4A84B)
- `--mud-brown`: Brown tone (#6B4E31)
- `--forest-green`: Green accent (#2D5A3D)
- `--cream`: Background cream (#f8f5f0)
- `--warm-white`: Light backgrounds (#fdfcfa)

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

- **Styles**: Edit `styles.css` directly
- **JavaScript**: Edit `script.js` directly
- **HTML content**: Edit `index.html`
- **Add images**: Place in `images/` folder and reference as `images/filename.jpg`
- **Modify colors**: Update CSS custom properties in `:root` in `styles.css`

## Testing

Manual browser testing only - no automated test suite. Test across viewports for responsive behavior.
