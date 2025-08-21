# Shock Filter

In the shock filter PDE (below), there are the upward facing triangle and the downward facing triangle. What do they represent? It **creates shocks at edge locations** where Δu = 0.

![Shock Filter PDE](/images/shock_filter_pde.png)

---

### The Two Triangles in PDE Notation

1. **Upward-pointing triangle (Δ)**

   * This is the **Laplacian operator**.
   * Formula:

     $$
     \Delta u = u_{xx} + u_{yy}
     $$
   * It adds up the second derivatives → basically measures how “curved” the image is (used in diffusion, smoothing).

---

2. **Downward-pointing triangle (∇)**

   * This is the **gradient operator**.
   * Formula:

     $$
     \nabla u = \Big( \frac{\partial u}{\partial x}, \; \frac{\partial u}{\partial y} \Big)
     $$
   * It gives you the direction of the **steepest intensity change** (edges).

---

### Putting it in the context of Shock / Erosion PDEs

* In **shock filters**, you often see things like:

  $$
  u_t = -|\nabla u| \, \text{sign}(\Delta u)
  $$

  * Here **∇u** (down triangle) = edge strength/direction.
  * **Δu** (up triangle) = Laplacian, tells you if you’re in a ridge or a valley.
  * Together they sharpen edges instead of blurring.

* In **erosion/dilation PDEs**:

  $$
  u_t = \pm |\nabla u|
  $$

  * Only the gradient (∇) appears, because you’re moving the boundary inward/outward at unit speed.

---

### ✅ TO SUMMARISE:

* **Downward triangle (∇) = gradient (first derivative, direction of change).**
* **Upward triangle (Δ) = Laplacian (second derivative, sum of curvatures).**

---
