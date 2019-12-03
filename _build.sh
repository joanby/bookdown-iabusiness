#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
printf 'Render BOOKDOWN listo'
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
printf 'Render PDF listo'
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
printf 'Render EPUB listo'

mv -v /_book/* /docs/
printf 'Contenido movido'

