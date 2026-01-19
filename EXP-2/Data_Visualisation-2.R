print("Sridha Srinivasaraghavan - 23BAD116")

library(ggplot2)
library(dplyr)
library(tidyr)

ecom_data <- read.csv("D:/EDA/lab/EXP-2/ecommerce_transactions.csv")

ecom_data <- ecom_data %>%
  filter(!is.na(Transaction_Amount))

ecom_data$Transaction_Date <- as.Date(ecom_data$Transaction_Date)

ggplot(ecom_data, aes(x = Transaction_Amount)) +
  geom_histogram(bins = 20, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Transaction Amounts",
       x = "Transaction Amount",
       y = "Frequency")

ggplot(ecom_data, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Boxplot of Transaction Amounts",
       y = "Transaction Amount")

ecom_data <- ecom_data %>%
  mutate(Year = format(Transaction_Date, "%Y"),
         Month = format(Transaction_Date, "%m"))

monthly_sales <- ecom_data %>%
  group_by(Year, Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount))

ggplot(monthly_sales, aes(x = Month, y = Year, fill = Total_Sales)) +
  geom_tile() +
  labs(title = "Heatmap of Monthly Sales Intensity",
       x = "Month",
       y = "Year")