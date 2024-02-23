# aou.display

## Description
An R package for displaying data frames and summary statistics in the All of Us Researcher's workbench.

## Installation
devtools::install_github("annisjs/aou.display")

## Usage
library(aou.display)
df <- data.table(a=c(1,2),b=c(4,5),c=c("foo","bar"))
display_df(df,width = 50) # adjust width of columns with the width argument
