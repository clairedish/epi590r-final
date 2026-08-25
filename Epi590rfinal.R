library(tidyverse)
library(gtsummary)
library(dplyr)
library (gt)

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

#descriptive table
got %>%
	select(name, sex, religion, intro_season, dth_flag,
				 dth_description, dth_season,
				 exp_episode, social_status, allegiance_last,
				 allegiance_switched, featured_episode_count) %>%
	gt() %>%
	cols_label(
				 name = "Name",
				 sex = "Sex",
				 religion = "Religion",
				 intro_season = "Season Character First Appeared",
				 dth_flag = "Charactered Died During Show",
				 dth_description = "Description of Death",
				 dth_season = "Season Character Died In",
				 exp_episode = "Number of Episodes Character Survived",
				 social_status = "Social Status at Time of Death",
				 allegiance_last = "Allegiance at Time of Death",
				 allegiance_switched = "Switched Allegiance During the Show",
				 featured_episode_count = "How Many Episodes Character Was Featured In"
						)

#summary table looking at different characteristics and death
tbl_summary(got,
						include = c(sex, religion, social_status, allegiance_last, allegiance_switched),
						by = dth_flag,
						label = list(
							sex ~ "Sex",
							religion ~ "Religion",
							social_status ~ "Social Status at Time of Death",
							allegiance_last ~ "Allegiance at Time of Death",
							allegiance_switched ~ "Switched Allegiance During the Show"
						))
