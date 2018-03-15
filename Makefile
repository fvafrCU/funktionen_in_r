index.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render("index.Rasciidoc")'
index_shiny.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render_slides("index.Rasciidoc", clean = TRUE)'
