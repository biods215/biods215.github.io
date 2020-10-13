fullargs <- commandArgs(trailingOnly=FALSE)
args <- commandArgs(trailingOnly=TRUE)

script.name <- normalizePath(sub("--file=", "", fullargs[grep("--file=", fullargs)]))

suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(data.table))

####################################################################
in_file  <- args[1]
out_file <- args[2]
extract_file <- args[3]
####################################################################

extract_list <- fread(cmd=paste('zcat', extract_file), head=F) %>%
select(V1) %>%
pull()

fread(cmd=paste('zcat', in_file)) %>%
filter(
    variant %in% extract_list
) %>% 
fwrite(out_file, sep='\t')

system(paste('gzip', out_file), intern=F, wait=T)
