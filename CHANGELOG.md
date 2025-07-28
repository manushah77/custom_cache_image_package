## 1.4.0 - 2025-028-18

### Updated
- `CustomCachedImage` now conditionally falls back to:
    - `errorWidget` if provided.
    - Initials-based widget when `isProfile` is `true`.
    - Default placeholder image otherwise.

### Added
- `name` parameter for generating initials fallback.
- `isProfile` flag to distinguish profile images from others.
- `_InitialsFallback` widget with colored background.
- `_NotFoundWidget` for default placeholder image on failure.
- `_ShimmerEffect` as the default loading placeholder.

---

## 1.1.0 - 2025-05-12

### Added
- Added `errorWidget` parameter to `CustomCachedImage` to allow custom fallback widgets (e.g., asset image, SVG, or any widget) when the image fails to load.

---

## 0.0.1

### Initial Release
- Basic `CustomCachedImage` widget with cached network image loading and shimmer placeholder.
