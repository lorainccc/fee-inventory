library(tidyverse)
library(knitr)

fee_data <- read.csv("FY24_FI.csv") %>%
    mutate(
        amt_fmt = scales::dollar(Feeamount)
    )

fee_data %>%
    filter(Feecode == "IN" | Feecode == "OD") %>%
    select(c("Feetitle", "amt_fmt")) %>%
    kable(align = "lr")

fee_data %>%
    filter(Feecategorycode == "SP", Feecode == "FI" | Feecode == "RB") %>%
    select(c("Feetitle", "amt_fmt")) %>%
    kable(align = "lr")

fee_data %>%
    filter(Feecategorycode == "SP", Feecode == "PF", Frequency == "OT") %>%
    select(c("Academicprogram", "Feetitle", "amt_fmt")) %>%
    kable(align = "llr")

fee_data %>%
    filter(Feecategorycode == "SP", Feecode == "IA") %>%
    select(c("Courseid", "Feetitle", "amt_fmt")) %>%
    kable(align = "llr")

fee_data %>%
    filter(Feecategorycode == "SP", Feecode == "CF" | Feecode == "LB") %>%
    select(c("Courseid", "Feetitle", "amt_fmt")) %>%
    arrange(Courseid) %>%
    kable(align = "llr")
