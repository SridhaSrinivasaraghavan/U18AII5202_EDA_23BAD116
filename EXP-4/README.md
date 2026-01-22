---

# Traffic Accident Visual Encoding using R

## Author

**Sridha Srinivasaraghavan**
23BAD116

---

## Objective

To apply effective visual encoding principles for meaningful communication of traffic accident data by representing severity, frequency, and accident type using multiple visual variables.

---

## Scenario

A city traffic department analyzes accident records to identify high-risk locations and understand accident severity patterns to support data-driven safety policies.

---

## Dataset Description

The dataset (`traffic_accidents.csv`) contains traffic accident records with the following attributes:

* Accident ID
* Location
* Date and Time
* Accident Type
* Severity level (Minor, Major, Fatal)
* Number of vehicles involved
* Casualties

The data is aggregated to study accident patterns across different locations.

---

## Tools & Libraries Used

* R Programming
* ggplot2
* dplyr

---

## Visualization Technique

### Multivariate Categorical Visualization

The visualization encodes multiple variables using perceptual principles:

* **Color** represents accident severity
* **Size** represents accident frequency
* **Shape** represents accident type
* **Position** represents accident location and severity level

Jittering is applied to reduce overlap and improve readability.

---

## Workflow Summary

1. Load traffic accident dataset
2. Aggregate accident frequency by location, type, and severity
3. Encode severity as color
4. Encode frequency as point size
5. Encode accident type as shape
6. Visualize high-risk zones and severity patterns

---

## Outcome

The visualization clearly highlights high-risk locations, distinguishes severity levels, and shows accident frequency patterns, enabling better interpretation for traffic safety planning.

---

## Repository Contents

* R code file
* Traffic accident dataset
* Output visualization
* Documentation
* README file

---