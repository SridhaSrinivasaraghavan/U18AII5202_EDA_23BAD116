print("Sridha Srinivasaraghavan - 23BAD116")

library(ggplot2)
library(dplyr)
library(GGally)

patient_data <- read.csv("D:/EDA/lab/EXP-3/healthcare_data.csv")

patient_data <- patient_data %>%
  filter(!is.na(Age),
         !is.na(BMI),
         !is.na(Glucose_Level),
         !is.na(Blood_Pressure))

patient_data <- patient_data %>%
  mutate(Age_Group = case_when(
    Age < 30 ~ "Young",
    Age >= 30 & Age < 50 ~ "Middle-aged",
    Age >= 50 ~ "Senior"
  ))

ggpairs(
  patient_data,
  columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
  lower = list(continuous = wrap("points", alpha = 0.6)),
  upper = list(continuous = wrap("points", alpha = 0.6)),
  diag  = list(continuous = wrap("densityDiag")),
  aes(color = Age_Group)
)
