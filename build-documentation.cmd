@echo off

mkdir build
cd build

echo ### Building documentation.pdf
pandoc --fail-if-warnings --lua-filter ../pandoc/filters/date.lua --lua-filter ../pandoc/filters/pandoc-gls/pandoc-gls.lua --template ../pandoc/templates/pandoc-latex-template/eisvogel.tex --number-sections --listings --highlight-style pygments -o _documentation.pdf ../src/documentation.md
pdftk _documentation.pdf ../src/appendix/application.pdf cat output documentation.pdf
del /F _documentation.pdf