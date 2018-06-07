unit_testing_slidy.html: unit_testing.Rasciidoc
	Rscript -e 'adoc <-  rasciidoc:::run_knitr("unit_testing.Rasciidoc", hooks = c("message", "error", "warning"), replacement = "source"); rasciidoc::rasciidoc(adoc, "-b slidy")'

index_shiny.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render_slides("index.Rasciidoc", clean = TRUE)'
index.html: index.Rasciidoc
	Rscript -e 'rasciidoc::render("index.Rasciidoc")'
