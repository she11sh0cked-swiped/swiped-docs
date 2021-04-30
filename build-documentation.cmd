@echo off

mkdir build
cd build

echo ### Building mermaid images
mkdir mermaid
mmdc -i ..\src\mermaid\infrastructure.mmd -o mermaid/infrastructure.png --height 1920
mmdc -i ..\src\mermaid\uml.mmd -o mermaid/uml.png --height 1920
mmdc -i ..\src\mermaid\tmdb-sequence.mmd -o mermaid/tmdb-sequence.png --height 1920

echo ### Building documentation.pdf
pandoc --fail-if-warnings --lua-filter ../pandoc/filters/date.lua --lua-filter ../pandoc/filters/pandoc-gls/pandoc-gls.lua --template ../pandoc/templates/pandoc-latex-template/eisvogel.tex --number-sections --listings --pdf-engine=lualatex -V monofont="Fira Code" -V lang=de -o _documentation.pdf ../src/documentation.md

echo ### Adding appendix
pdftk _documentation.pdf ../src/appendix/ihk-annex.pdf ../src/appendix/application.pdf cat output documentation.pdf

echo ### Cleaning up
del /F _documentation.pdf