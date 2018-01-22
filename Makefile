index_shiny.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render_slides("index.Rasciidoc")'
