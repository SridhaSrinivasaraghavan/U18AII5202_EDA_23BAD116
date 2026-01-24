print("Sridha Srinivasaraghavan - 23BAD116")

library(ggplot2)
library(dplyr)
library(GGally)

retail_data <- read.csv("D:/EDA/lab/EXP-6/retail_business.csv")

colnames(retail_data)

retail_data <- retail_data %>%
  filter(!is.na(Sales),
         !is.na(Profit),
         !is.na(Customer_Segment),
         !is.na(Region))

ggparcoord(
  data = retail_data,
  columns = which(colnames(retail_data) %in% c("Sales", "Profit")),
  groupColumn = "Customer_Segment",
  scale = "uniminmax",
  alphaLines = 0.6
) +
  labs(
    title = "Parallel Coordinates Plot for Sales and Profit",
    color = "Customer Segment"
  ) +
  theme_minimal()

ggplot(
  retail_data,
  aes(
    x = Sales,
    y = Profit,
    size = Sales,
    color = Customer_Segment
  )
) +
  geom_point(alpha = 0.7) +
  scale_size_continuous(
    name = "Sales Volume",
    breaks = c(
      min(retail_data$Sales),
      median(retail_data$Sales),
      max(retail_data$Sales)
    ),
    labels = c(
      paste0("Low (", round(min(retail_data$Sales)), ")"),
      paste0("Medium (", round(median(retail_data$Sales)), ")"),
      paste0("High (", round(max(retail_data$Sales)), ")")
    ),
    range = c(4, 14)
  ) +
  labs(
    title = "Bubble Chart: Sales vs Profit",
    x = "Sales",
    y = "Profit",
    color = "Customer Segment"
  ) +
  theme_minimal()

ggplot(
  retail_data,
  aes(
    x = Sales,
    y = Profit,
    color = Customer_Segment
  )
) +
  geom_point(alpha = 0.7) +
  facet_wrap(~ Region) +
  labs(
    title = "Trellis Display of Sales and Profit by Region",
    x = "Sales",
    y = "Profit",
    color = "Customer Segment"
  ) +
  theme_minimal()