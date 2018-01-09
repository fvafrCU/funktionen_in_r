NAME = funktionen_in_r
FILE = $(NAME).tex
TEMPLATE = $(shell find .fva_templates -type f)

$(NAME).pdf: ${FILE} ${TEMPLATE} index.tex
	texi2dvi --pdf ${FILE}
$(FILE): body.tex header.tex
	cat header.tex > $(FILE)
	cat body.tex >> $(FILE)
body.tex: index.tex
	sed < index.tex -e '/^\\documentclass/d' > body.tex
index.tex: index.Rmd
	./bin/render.R index.Rmd &&   pandoc -s -t beamer render_index.Rmd/index.utf8.md > index.tex
