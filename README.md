# T-testing-with-R

---

````markdown
# 📊 Normality Test and One-Sample t-Test in R Using the `women` Dataset

This repository contains an R script that demonstrates how to:

- Check if a variable follows a normal distribution
- Visualize the distribution
- Perform a one-sample t-test

All steps use base R functions and the built-in `women` dataset.

> ⚠️ **Note**: The `women` dataset is built into R and used for demonstration and educational purposes only.

---

## 🎯 Objective

To assess whether the `height` variable in the `women` dataset is normally distributed, and to test if the average height is significantly different from 63 inches using a one-sample t-test.

---

## 🧪 Script Overview

### 1. Load the Dataset
```r
attach(women)
women
````

Loads and displays the `women` dataset, which contains average heights and weights for American women aged 30–39.

---

### 2. Check for Normality

```r
shapiro.test(height)
```

Performs the Shapiro-Wilk test on the `height` variable to check if it is normally distributed.

* If the **p-value > 0.05**, the data is likely normal.
* If the **p-value ≤ 0.05**, the data may not be normally distributed.

---

### 3. Visualize the Distribution

```r
hist((height), prob = TRUE)
curve(dnorm(x, mean(height), sd(height)), add = TRUE, col = "red")
```

Displays a histogram of `height` with a normal distribution curve overlayed in red.

---

### 4. Perform a One-Sample t-Test

```r
t.test(height, mu = 63)
```

Tests if the mean height is significantly different from 63 inches.

* `mu = 63` sets the null hypothesis mean to 63.
* The test checks if the observed mean differs significantly from this value.

---

### 5. Get the Working Directory

```r
getwdt()  # Note: This seems to be a typo; it should be getwd()
```

Retrieves the current working directory. *(Correct function: `getwd()`)*

---

## 📁 Files Included

```
/project-root
  ├── women_height_analysis.R  # Main R script
  └── README.md                # This file
```

---

## 📋 Requirements

* R (version 3.6 or newer)
* RStudio (optional but helpful)
* No external libraries required (uses base R)

---

## 📝 Notes

* The script uses `attach(women)`, which is okay for small scripts. For larger projects, it is safer to use `women$height` or `with(women, ...)`.
* There's a typo in `getwdt()` — the correct function is `getwd()` to get the current directory.

---


## 🤝 Contributing

Feel free to contribute improvements or suggestions! Open an issue or pull request if you'd like to help improve the project.


