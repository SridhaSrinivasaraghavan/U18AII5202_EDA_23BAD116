---

# Multivariate Healthcare Data Visualization using R

## Author

**Sridha Srinivasaraghavan**
23BAD116

---

## Objective

To discover relationships among multiple health indicators using multivariate visualization techniques for early disease prediction.

---

## Scenario

A hospital analytics team analyzes patient health records to study relationships between age, BMI, glucose levels, and blood pressure to support early diagnosis and preventive healthcare decisions.

---

## Dataset Description

The dataset (`healthcare_data.csv`) contains patient health information including:

* Patient ID
* Age
* Gender
* Body Mass Index (BMI)
* Glucose Level
* Blood Pressure
* Cholesterol
* Disease Risk

Only relevant attributes are used for multivariate visualization.

---

## Tools & Libraries Used

* R Programming
* ggplot2
* dplyr
* GGally

---

## Visualization Technique

### Scatter Plot Matrix

* Displays pairwise relationships between Age, BMI, Glucose Level, and Blood Pressure
* Uses color encoding to distinguish age groups
* Helps identify correlations and patterns across multiple variables

### Age Group Classification

* Young: Age < 30
* Middle-aged: 30 ≤ Age < 50
* Senior: Age ≥ 50

---

## Workflow Summary

1. Load patient health dataset
2. Remove missing values
3. Categorize patients into age groups
4. Generate a scatter plot matrix with color encoding
5. Visually identify correlated health indicators

---

## Outcome

The scatter plot matrix reveals multivariate relationships among health indicators, highlighting correlations such as BMI–glucose and age–blood pressure, with distinct patterns across age groups.

---

## Repository Contents

* R code file
* Healthcare dataset
* Output visualization
* Documentation
* README file

---