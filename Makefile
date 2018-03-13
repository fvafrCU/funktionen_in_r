index_shiny.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render_slides("index.Rasciidoc")'
index.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render("index.Rasciidoc")'
