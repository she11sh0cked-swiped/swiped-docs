@echo off

mkdir build
cd build

echo ### Building documentation.pdf
pandoc --fail-if-warnings --lua-filter ../pandoc/filters/date.lua --lua-filter ../pandoc/filters/pandoc-gls/pandoc-gls.lua -F mermaid-filter.cmd --template ../pandoc/templates/pandoc-latex-template/eisvogel.tex --number-sections --listings --pdf-engine=lualatex -V monofont="Fira Code" -V lang=de -o _documentation.pdf ../src/documentation.md
pdftk _documentation.pdf ../src/appendix/ihk-annex.pdf ../src/appendix/application.pdf cat output documentation.pdf
del /F _documentation.pdf