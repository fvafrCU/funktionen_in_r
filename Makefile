index_shiny.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render_slides("index.Rasciidoc", clean = TRUE)'
index.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render("index.Rasciidoc")'
