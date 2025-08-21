# 📘 **PDE Symbol Glossary (for Motion, Stereo & Image PDEs)**

### **1. Gradient (∇u)** → Downward triangle

* **Definition:**

  $$
  \nabla u = \left(\frac{\partial u}{\partial x}, \frac{\partial u}{\partial y}\right)
  $$
* **Meaning:** Direction and rate of **steepest intensity change**.
* **Use:** Detects **edges** (shock filters, erosion/dilation, diffusion).

---

### **2. Laplacian (Δu)** → Upward triangle

* **Definition:**

  $$
  \Delta u = u_{xx} + u_{yy}
  $$
* **Meaning:** Measures how “curved” or “bumpy” the intensity surface is.
* **Use:** Appears in **linear diffusion** (heat equation) for isotropic smoothing.

---

### **3. Divergence (div v)**

* **Definition:**

  $$
  \text{div}(v) = \frac{\partial v_x}{\partial x} + \frac{\partial v_y}{\partial y}
  $$
* **Meaning:** Net **outflow of a vector field** (like how much stuff spreads out).
* **Use:** In anisotropic diffusion:

  $$
  u_t = \text{div}(g(|\nabla u|^2) \nabla u)
  $$

  controls smoothing depending on edge strength.

---

### **4. Magnitude of Gradient (|∇u|)**

* **Definition:**

  $$
  |\nabla u| = \sqrt{u_x^2 + u_y^2}
  $$
* **Meaning:** Edge **strength** (how sharp the change is).
* **Use:** Erosion/dilation PDEs move the boundary with speed proportional to this.

---

### **5. Normalised Gradient (∇u / |∇u|)**

* **Definition:** Unit vector pointing in direction of steepest change.
* **Use:** In **mean curvature motion** and **level-set PDEs** to evolve contours.

---

### **6. Mean Curvature (div(∇u/|∇u|))**

* **Definition:** Divergence of the unit normal.
* **Meaning:** Tells how “curvy” the contour is.
* **Use:** In **mean curvature motion**, curvy parts shrink faster → smoothing shapes.

---

### **7. Sign(Δu)**

* **Definition:** ±1 depending on whether pixel is ridge or valley.
* **Use:** In **shock filters**:

  $$
  u_t = -|\nabla u| \, \text{sign}(\Delta u)
  $$

  → **sharpen edges** by pushing intensity in opposite directions at edges.

---

# 🚦 **Quick Visual Memory Aid**

* **∇** = slope/steepest change (edges).
* **Δ** = sum of slopes (bumpiness).
* **div** = spreading of a vector field.
* **|∇u|** = edge strength.
* **div(∇u/|∇u|)** = mean curvature (rounding off bumps).

