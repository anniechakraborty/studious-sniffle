# PDEs used in motion, stereo, and image enhancement

---

## 🟦 1. Linear Diffusion (Heat Equation)

👉 Think: *spilling ink on paper*.

* It makes the image **smooth everywhere**, like when paint spreads out evenly.
* Every bump (edge, detail, noise) just gets blurred away.
* That’s why it’s called **isotropic**: it doesn’t care about directions — it smooths the same in every direction.

---

## 🟦 2. Nonlinear Diffusion (Perona–Malik, anisotropic diffusion)

👉 Think: *smart smoothing*.

* It looks at where edges are, and says:

  * “Flat region? I’ll blur it, to clean noise.”
  * “Edge? Stop! Don’t blur across it.”
* So it **denoises** but **keeps the edges sharp**.
* That’s “anisotropic” = it depends on **direction** (smooth along edges but not across them).

---

## 🟦 3. Mean Curvature Motion

👉 Think: *melting a bumpy soap bubble*.

* The contour/shape of an object shrinks to become **rounder and smoother**.
* Curvy, spiky parts shrink faster than flat parts.
* Used to **smooth boundaries** of objects while keeping overall shape.

---

## 🟦 4. Shock Filter

👉 Think: *edge sharpening tool*.

* Instead of blurring, it makes edges **sharper** — like tracing a pencil line around them.
* Needs special care (upwind scheme) because it behaves more like a **wave crashing** than like smooth diffusion.

---

## 🟦 5. Morphological PDEs (Erosion & Dilation)

👉 Think: *sandpapering* and *inflating*.

* **Erosion:** eats away at bright shapes, makes objects shrink. Like sandpaper rubbing away details.
* **Dilation:** grows bright shapes, makes objects expand. Like blowing up a balloon.
* Both are important for **shape processing**.
* They’re related to “upwind schemes” because the boundary moves in one direction (inward for erosion, outward for dilation).

---

## 🚦 Summary :

* **Linear diffusion = blur everything.**
* **Nonlinear (anisotropic) diffusion = blur inside, protect edges.**
* **Mean curvature = smooth shapes until they’re round.**
* **Shock filter = sharpen edges.**
* **Erosion = shrink shapes.**
* **Dilation = grow shapes.**

---
