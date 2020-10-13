#!/bin/bash
set -beEuo pipefail

out_d=data

wget https://www.dropbox.com/s/puxks683vb0omeg/variants.tsv.bgz?dl=0 -O ${out_d}/variants.tsv.bgz
wget https://www.dropbox.com/s/4rnjzczwjgs5pgl/30780_irnt.gwas.imputed_v3.both_sexes.tsv.bgz?dl=0 -O ${out_d}/30780_irnt.gwas.imputed_v3.both_sexes.tsv.bgz
wget https://www.dropbox.com/s/65jisgxwbbdrkaw/30760_irnt.gwas.imputed_v3.both_sexes.tsv.bgz?dl=0 -O ${out_d}/30760_irnt.gwas.imputed_v3.both_sexes.tsv.bgz
wget https://www.dropbox.com/s/c6xjubyy2kt2fa3/I9_MI.gwas.imputed_v3.both_sexes.tsv.bgz?dl=0 -O ${out_d}/I9_MI.gwas.imputed_v3.both_sexes.tsv.bgz

