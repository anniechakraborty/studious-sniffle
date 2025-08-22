# What is the MAP classifier?

---

### 1. Background: Bayesian Decision Theory

In probability and statistics, **Bayes’ theorem** tells us how to update the probability of a hypothesis (class) given some observed data (features).

If we have a set of possible classes $C_1, C_2, \ldots, C_k$ and an observation $x$, Bayes’ theorem says:

$$
P(C_i \mid x) = \frac{P(x \mid C_i) \, P(C_i)}{P(x)}
$$

* $P(C_i \mid x)$ = posterior probability of class $C_i$ given data $x$
* $P(x \mid C_i)$ = likelihood of seeing data $x$ if class is $C_i$
* $P(C_i)$ = prior probability of class $C_i$
* $P(x)$ = marginal probability of observing $x$ (normalizing constant)

---

### 2. MAP Classifier (Maximum A Posteriori)

The **MAP classifier** chooses the class with the **highest posterior probability** given the data:

$$
\hat{C}_{MAP}(x) = \arg\max_{C_i} P(C_i \mid x)
$$

Using Bayes’ theorem:

$$
\hat{C}_{MAP}(x) = \arg\max_{C_i} \; P(x \mid C_i) \, P(C_i)
$$

(where we can drop $P(x)$ since it’s the same for all classes).

---

### 3. Key Points

* **MAP includes priors** $P(C_i)$. This means it accounts for how likely a class is *before* seeing the data.

* It is different from the **Maximum Likelihood (ML) classifier**, which ignores priors and just picks:

  $$
  \hat{C}_{ML}(x) = \arg\max_{C_i} P(x \mid C_i)
  $$

* Example:
  If you are classifying emails as *spam* vs *not spam*:

  * Even if an email "looks spammy" ($P(x \mid spam)$ is high), if you know only **1% of emails are spam** ($P(spam) = 0.01$), the MAP classifier might still lean toward "not spam".

---

✅ **In summary:**
The **MAP classifier** is the Bayes-optimal decision rule that assigns an observation to the class that maximizes the posterior probability $P(C_i \mid x)$. It balances both the evidence (likelihood) and prior beliefs.

---