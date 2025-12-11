# Non-Parametric-Statistical-Methods-Assignment

# 📈 Non-Parametric Statistical Methods Assignment & Analysis Project

## ✨ Project Overview

This work was developed as an assignment for the "Non-Parametric Methods" course, focusing on statistical analysis when the underlying assumptions for parametric tests (such as normality) are violated.

The project systematically addresses eight key statistical questions, utilizing real-world or simulated datasets to demonstrate mastery in selecting and executing the correct non-parametric counterpart for common parametric tests (like t-tests and ANOVA).

## 🗂️ Data Sources and Structure

The analyses within this project were conducted on three distinct datasets, each representing a different data structure or research design:

### 1. Independent Samples Data (Blood Glucose Levels)
This dataset consists of **blood glucose measurements** taken from randomly selected individuals across three distinct, independent age groups: **10-29**, **30-49**, and **50-69**.
* **Purpose:** Primarily used for tests comparing independent groups (Normality Check, Mann-Whitney U, Kruskal-Wallis).
* **Key Insight:** This data structure necessitated the use of methods that compare location parameters (medians) across groups.

### 2. Dependent Samples Data (Seed Yield)
This dataset tracks the **yield results** for five different seed types (**A, B, C, D, E**) that were all planted and measured under four different soil types.
* **Purpose:** Used for tests comparing dependent/paired groups (Wilcoxon Signed-Rank, Friedman Test).
* **Key Insight:** Since the measurements for seed types are *dependent* (paired by soil type), repeated measures non-parametric tests were essential.

### 3. Time Series Data (Product Sales)
A set of **monthly sales figures** for a specific product throughout the year 2015.
* **Purpose:** Used to perform a non-parametric trend analysis.
* **Key Insight:** This data required a test specifically designed to detect monotonic trends in sequential data.

***

## 🔬 Methodology: Statistical Questions & Analysis

The project is structured around 8 detailed statistical problems (Soru 1-8), each addressing a core concept in non-parametric statistics.

### Q1: Normality Testing and Descriptive Statistics
* **Objective:** To check the assumption of normality for the Independent Samples Data (Blood Glucose) and provide summary statistics.
* **Tests Performed:** **Kolmogorov-Smirnov** and/or **Anderson-Darling** tests.
* **Visualization:** Detailed **Box-plots** were generated for each age group to visually inspect symmetry, central tendency (median), and identify potential outliers.
* **Conclusion:** The tests confirmed a significant violation of the normality assumption, justifying the exclusive use of non-parametric methods.

### Q2 & Q3: One and Two Sample Location Tests
* **Objective:** To determine if the median of a single sample differs from a hypothesized value (Q3), and for comparing two samples.
* **Tests Performed:** **Sign Test** and **Wilcoxon Signed-Rank Test** (for one-sample median comparison).
* **Hypotheses:** Clear Null ($H_0$) and Alternative ($H_1$) hypotheses are stated for each scenario.

### Q4: Comparing Two Independent Samples
* **Objective:** To compare the medians of two independent groups from the Blood Glucose data.
* **Test Performed:** **Mann-Whitney U Test** (The non-parametric alternative to the Independent Samples t-test).
* **Output:** The analysis includes the calculated U statistic, rank sums, and the final p-value from R/SPSS output.

### Q5: Comparing Two Dependent Samples
* **Objective:** To compare the medians of two dependent groups (e.g., comparing Seed Type A vs. Seed Type B across the same soil types).
* **Test Performed:** **Wilcoxon Signed-Rank Test** (The non-parametric alternative to the Paired Samples t-test).

### Q6: Comparing K (>2) Independent Samples
* **Objective:** To compare the medians of all three age groups in the Blood Glucose data simultaneously.
* **Test Performed:** **Kruskal-Wallis H Test** (The non-parametric alternative to One-Way ANOVA).
* **Post-Hoc Analysis:** If the overall test showed a significant difference, appropriate **post-hoc non-parametric tests** (e.g., Dunn's test with Bonferroni correction) were applied to identify exactly which pairs of groups differ.

### Q7: Comparing K (>2) Dependent Samples
* **Objective:** To compare the yield medians of the five different seed types tested across the same soil conditions (Dependent Samples Data).
* **Test Performed:** **Friedman Test** (The non-parametric alternative to One-Way Repeated Measures ANOVA).
* **Output:** The statistical output, including the Chi-square statistic and degrees of freedom, is provided and interpreted.

### Q8: Trend Analysis in Time Series Data
* **Objective:** To detect a statistically significant monotonic trend (increasing or decreasing) in the 2015 monthly sales data.
* **Test Performed:** **Mann-Kendall Trend Test**.
* **Conclusion:** The analysis determines whether the Null Hypothesis of "No Trend" can be rejected, providing high-confidence insight into the stability of the sales over time.

***

## 💻 Tools and Software

The entire statistical process—from data manipulation to hypothesis testing and visualization—was executed primarily using **R Statistical Software**.

* **R Code:** All R code snippets used for data entry, package loading, test execution, and graph generation are included within the assignment document.
* **SPSS References:** The assignment also provides context by referencing and comparing the non-parametric tests to their traditional **SPSS** applications.

## 🔑 Key Takeaways

This project serves as a practical guide demonstrating when and how to apply non-parametric methods. It highlights the importance of checking test assumptions and offers a clear, step-by-step approach to hypothesis testing, p-value interpretation, and drawing statistically sound conclusions when dealing with non-normal or ordinal data.

---
**Author:** Müleyke Önal 
