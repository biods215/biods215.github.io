suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(data.table))

pvarzst   <- '/oak/stanford/groups/mrivas/ukbb24983/array_imp_combined_no_cnv/pgen/ukb24983_ukb24983_cal_hla_imp.pvar.zst'
extract_f <- '/oak/stanford/groups/mrivas/ukbb24983/array_imp_combined_no_cnv/ldmap/ukb24983_ukb24983_cal_hla_imp.white_british.bool.prune.in'

extracted_out_pvar <- '/oak/stanford/groups/mrivas/users/ytanigaw/repos/biods215/biods215.github.io/problem_sets/2020/HW2/1_MR/data/LD_indep.pvar'


extract <- extract_f %>%
fread(head=F) %>% 
select(V1) %>% 
pull()

fread(cmd=paste0('zstdcat ', pvarzst)) %>% 
rename('CHROM' = '#CHROM') %>%
filter(ID %in% extract) %>%
mutate(variant = paste(CHROM, POS, REF, ALT, sep=':')) %>%
rename('#CHROM' = 'CHROM') %>% 
fwrite(extracted_out_pvar, sep='\t')
