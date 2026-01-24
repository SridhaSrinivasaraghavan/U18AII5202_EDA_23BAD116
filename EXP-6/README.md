---

# Advanced Multivariate Displays for Retail Analytics (RStudio)

## Author

**Sridha Srinivasaraghavan**
23BAD116

---

## Experiment Title

Implementation of Advanced Multivariate Visualizations using R

---

## Objective

To implement advanced multivariate displays for analyzing complex retail data and uncover relationships among sales, profit, customer segments, and regions.

---

## Scenario

A retail analytics firm analyzes business data to study sales performance, profitability, customer segments, and regional trends in order to optimize business strategies and support data-driven decision-making.

---

## Dataset Description

The dataset used (`retail_business.csv`) contains retail business information with the following key attributes:

* **Sales** – Total sales value of transactions
* **Profit** – Profit earned from sales
* **Customer_Segment** – Category of customers (e.g., Consumer, Corporate, Home Office)
* **Region** – Geographic region of sales

The dataset is preprocessed to remove missing values before visualization.

---

## Tools & Libraries Used

* R Programming
* RStudio
* ggplot2
* dplyr
* GGally

---

## Visualizations Implemented

### 1. Parallel Coordinates Plot

* Displays Sales and Profit simultaneously
* Uses color encoding for customer segments
* Helps identify patterns and relationships between multiple variables

---

### 2. Bubble Chart (Sales vs Profit)

* X-axis: Sales
* Y-axis: Profit
* Bubble size: Sales volume
* Bubble color: Customer segment
* Includes a meaningful size legend (Low, Medium, High sales)

---

### 3. Trellis Display by Region

* Faceted scatter plots of Sales vs Profit
* Separate view for each region
* Enables comparison of performance patterns across regions

---

## Workflow Summary

1. Load retail dataset into RStudio
2. Perform data cleaning and filtering
3. Create parallel coordinate plot
4. Generate bubble chart with size encoding
5. Implement trellis display using faceting
6. Analyze multivariate relationships

---

## Key Insights

* Reveals relationships between sales and profit across customer segments
* Highlights regional performance variations
* Supports strategic retail analysis using multivariate visualization

---

## Repository Contents

* R script file
* Retail dataset (`retail_business.csv`)
* Output visualizations
* Documentation
* README file

---

## Outcome

Advanced multivariate visualizations successfully illustrated complex relationships in retail data, aiding in exploratory analysis and supporting AI-driven business decision-making.

---