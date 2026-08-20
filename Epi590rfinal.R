library(tidyverse)
library(gtsummary)

got <- read_csv(here::here("data","GoT_dataset","character_data_S01-S08.csv"))

#labeling the values in the dataset
got$sex <- factor(got$sex,
											levels = c(1, 2, 9),
											labels = c("Male", "Female", "Unknown"))
got$religion <- factor(got$religion,
									levels = c(1, 2, 3, 4, 5, 6, 7, 9),
									labels = c("Great Stallion", "Lord of Light", "Faith of the Seven", "Old Gods", "Drowned God", "Many Faced God", "Other", "Unknown/Unclear"))
got$social_status <- factor(got$social_status,
											 levels = c(1, 2, 9),
											 labels = c("Highborn", "Lowborn", "Unkown/Unclear"))
got$allegiance_last <- factor(got$allegiance_last,
											 levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
											 labels = c("Stark", "Targaryen", "Night's Watch", "Lannister", "Greyjoy", "Bolton", "Frey", "Other", "Unknown/Unclear"))
got$allegiance_switched <- factor(got$allegiance_switched,
									levels = c(1, 2, 9),
									labels = c("No", "Yes", "Unknown/Unclear"))
got$dth_flag <- factor(got$dth_flag,
											 levels = c(0, 1),
											 labels = c("No", "Yes"))
