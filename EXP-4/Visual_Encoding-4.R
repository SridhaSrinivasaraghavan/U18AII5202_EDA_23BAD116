print("Sridha Srinivasaraghavan - 23BAD116")

library(ggplot2)
library(dplyr)

data <- read.csv("D:/EDA/lab/EXP-4/traffic_accidents.csv")

plot_data <- data %>%
  group_by(Location, Accident_Type, Severity) %>%
  summarise(Frequency = n(), .groups = "drop")

plot_data$Severity <- factor(plot_data$Severity, levels = c("Minor", "Major", "Fatal"))

ggplot(plot_data, aes(x = Location, y = Severity)) +
  geom_jitter(
    aes(size = Frequency,
        color = Severity,
        shape = Accident_Type),
    width = 0.2, height = 0.1, alpha = 0.8
  ) +
  scale_color_manual(
    values = c(
      "Minor" = "#A6CEE3",
      "Major" = "#1F78B4",
      "Fatal" = "#B10026"
    )
  ) +
  scale_size_continuous(range = c(5, 15)) +
  labs(
    title = "Traffic Accident Analysis",
    subtitle = "Visualizing Severity, Frequency, and Accident Type",
    x = "Location Zone",
    y = "Accident Severity",
    size = "Accident\nFrequency",
    shape = "Accident\nType",
    color = "Severity\nLevel"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 16),
    axis.text = element_text(size = 12),
    legend.position = "right",
    legend.key.size = unit(0.2, "cm"),
    legend.text = element_text(size = 4),
    legend.title = element_text(size = 6, face = "bold"),
    legend.spacing.y = unit(0.1, "cm")
  )
