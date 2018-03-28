# Script header ################################################

library(googledrive)
drive_auth()

library(dplyr)

source("./scripts/template_fxns.R") # RStudio
# source("./template_fxns.R") # Jupyter

## data://
datapath.id <- as_id("1b1p2CeqyU-OmhBLO8XJdI6SSsXGrB3eB")

## proxy data://
proxydata.path <- file.path(".", "Data") # For RStudio
# proxydata.path <- file.path("..", "Data") # For Jupyter

#************************************************************************#

# Raw #####

raw.url <- "http://raw.githubusercontent.com/jfvizoso/shynyappandreproduciblepitch/master/Melbourne_housing_FULL.csv"
data.raw <- read.csv(raw.url, stringsAsFactors = FALSE)
data.df <- data.raw %>% 
	mutate(
		Type = as.factor(Type),
		Method = as.factor(Method)
	)

raw.file <- "Melbourne_housing_FULL.rds"
raw.filepath <- file.path(proxydata.path, raw.file)
saveRDS(data.raw, raw.filepath)
drive_upload(raw.filepath, datapath.id, raw.file)
drive_sub_id(datapath.id, raw.file) # 1SuZ41eZfCg01DMRwsOIyPzkzBEcPVxNl
