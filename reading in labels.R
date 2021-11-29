


#################################################
##### SEMI-FIELD LABELLED ALGORITHM OUTPUTS #####
#################################################


#### READING IN LABEL FILES TO ONE DF

rm(list = ls(all.names = TRUE)) # clear workspace

library(tidyverse)


### read in 2021 files from Amber 

setwd("D:/HUMBUG/AAA HUMBUG - GATES/FIELD WORK/HUMBUG NET/SEMI-FIELD TRIAL _ DATA and ANALYSES/AUTOMATED SEMI-FIELD ANALYSES/Amber_Checked_Semi-field 2021")

Amber.A1.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber A_phone 1 (A1)_Labels.txt", header=FALSE)
Amber.A2.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber A_phone 2 (A2)_Labels.txt", header=FALSE, na=TRUE)
Amber.A3.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber A_phone 3 (A3)_Labels.txt", header=FALSE, na=TRUE)
Amber.A4.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber A_phone 4 (A4)_Labels.txt", header=FALSE, na=TRUE)

Amber.B1.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber B_phone 1 (B1)_Labels.txt", header=FALSE, na=TRUE)
Amber.B2.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber B_phone 2 (B2) (2) removed_Labels.txt", header=FALSE, na=TRUE)
## found a load of (2) in the original file - Amber doesn;t know whaty they are so removed
Amber.B3.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber B_phone 3 (B3)_Labels.txt", header=FALSE, na=TRUE)
Amber.B4.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber B_phone 4 (B4)_Labels.txt", header=FALSE, na=TRUE)

Amber.C1.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber C_phone 1 (C1)_Labels.txt", header=FALSE)
Amber.C2.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber C_phone 2 (C2)_Labels.txt", header=FALSE, na=TRUE)
Amber.C3.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber C_phone 3 (C3)_Labels.txt", header=FALSE, na=TRUE)
Amber.C4.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber C_phone 4 (C4)_Labels.txt", header=FALSE, na=TRUE)

Amber.D1.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber D_phone 1 (D1)_Labels.txt", header=FALSE, na=TRUE)
Amber.D2.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber D_phone 2 (D2)_Labels.txt", header=FALSE, na=TRUE)
Amber.D3.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber D_phone 3 (D3)_Labels.txt", header=FALSE, na=TRUE)
Amber.D4.2021 <- read.table("2021_P0.5_PE0.9_MI0.5_step_30Chamber D_phone 4 (D4)_Labels.txt", header=FALSE, na=TRUE)

## add chamber and phone columns

Amber.A1.2021 <- Amber.A1.2021 %>% add_column(chamber = "A")
Amber.A1.2021 <- Amber.A1.2021 %>% add_column(phone = "1")

Amber.A2.2021 <- Amber.A2.2021 %>% add_column(chamber = "A")
Amber.A2.2021 <- Amber.A2.2021 %>% add_column(phone = "2")

Amber.A3.2021 <- Amber.A3.2021 %>% add_column(chamber = "A")
Amber.A3.2021 <- Amber.A3.2021 %>% add_column(phone = "3")

Amber.A4.2021 <- Amber.A4.2021 %>% add_column(chamber = "A")
Amber.A4.2021 <- Amber.A4.2021 %>% add_column(phone = "4")

Amber.B1.2021 <- Amber.B1.2021 %>% add_column(chamber = "B")
Amber.B1.2021 <- Amber.B1.2021 %>% add_column(phone = "1")

Amber.B2.2021 <- Amber.B2.2021 %>% add_column(chamber = "B")
Amber.B2.2021 <- Amber.B2.2021 %>% add_column(phone = "2")

Amber.B3.2021 <- Amber.B3.2021 %>% add_column(chamber = "B")
Amber.B3.2021 <- Amber.B3.2021 %>% add_column(phone = "3")

Amber.B4.2021 <- Amber.B4.2021 %>% add_column(chamber = "B")
Amber.B4.2021 <- Amber.B4.2021 %>% add_column(phone = "4")

Amber.C1.2021 <- Amber.C1.2021 %>% add_column(chamber = "C")
Amber.C1.2021 <- Amber.C1.2021 %>% add_column(phone = "1")

Amber.C2.2021 <- Amber.C2.2021 %>% add_column(chamber = "C")
Amber.C2.2021 <- Amber.C2.2021 %>% add_column(phone = "2")

Amber.C3.2021 <- Amber.C3.2021 %>% add_column(chamber = "C")
Amber.C3.2021 <- Amber.C3.2021 %>% add_column(phone = "3")

Amber.C4.2021 <- Amber.C4.2021 %>% add_column(chamber = "C")
Amber.C4.2021 <- Amber.C4.2021 %>% add_column(phone = "4")


Amber.D1.2021 <- Amber.D1.2021 %>% add_column(chamber = "D")
Amber.D1.2021 <- Amber.D1.2021 %>% add_column(phone = "1")

Amber.D2.2021 <- Amber.D2.2021 %>% add_column(chamber = "D")
Amber.D2.2021 <- Amber.D2.2021 %>% add_column(phone = "2")

Amber.D3.2021 <- Amber.D3.2021 %>% add_column(chamber = "D")
Amber.D3.2021 <- Amber.D3.2021 %>% add_column(phone = "3")

Amber.D4.2021 <- Amber.D4.2021 %>% add_column(chamber = "D")
Amber.D4.2021 <- Amber.D4.2021 %>% add_column(phone = "4")

amber.2021 <- data.frame()

## bind all the df together
amber.2021 <- rbind(
     Amber.A1.2021,
     Amber.A2.2021,
     Amber.A3.2021,
     Amber.A4.2021,
     
     Amber.B1.2021,
     Amber.B2.2021,
     Amber.B3.2021,
     Amber.B4.2021,
     
     Amber.C1.2021,
     Amber.C2.2021,
     Amber.C3.2021,
     Amber.C3.2021,
     
     Amber.D1.2021,
     Amber.D2.2021,
     Amber.D3.2021,
     Amber.D4.2021)

## name the remaining columns
colnames(amber.2021) <- c("time.st", "time.end", "rec.id", "label", "chamber", "phone")

### split the label column by '-' to separate the T and F
ncols <- max(stringr::str_count(amber.2021$labels, "-")) + 1

colnm <- c("col1", "col2", "col3")
amber.2021 <- amber.2021 %>% separate(label, sep = "-", into = colnm, remove = FALSE)

amber.2021 <- rename(amber.2021, false.positive = col3)
write.csv (amber.2021, "Amber_2021.csv")
