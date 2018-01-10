infile=$1
adfile=$(echo $infile | sed -e"s/\(\.\)R/\1/")
R-devel -e "library(knitr);knit('$infile', '$adfile')"
asciidoc  $adfile
