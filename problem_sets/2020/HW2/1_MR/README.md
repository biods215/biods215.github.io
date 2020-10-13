
```{bash}
Rscript LD_indep_list.R

Rscript filter_ld.R data/I9_MI.gwas.imputed_v3.both_sexes.tsv.bgz data/MI.tsv data/LD_indep.lst.gz
Rscript filter_ld.R data/30760_irnt.gwas.imputed_v3.both_sexes.tsv.bgz data/HDL.tsv data/LD_indep.lst.gz
Rscript filter_ld.R data/30780_irnt.gwas.imputed_v3.both_sexes.tsv.bgz data/LDL.tsv data/LD_indep.lst.gz
```
