unit_testing.html: unit_testing.Rasciidoc
	Rscript -e 'rasciidoc::render("unit_testing.Rasciidoc",  asciidoc_args = "-b slidy")'
index_shiny.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render_slides("index.Rasciidoc", clean = TRUE)'
index.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render("index.Rasciidoc")'
