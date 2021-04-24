@echo off

mkdir build
cd build

echo ### Building application.pdf
pandoc --fail-if-warnings --lua-filter ../pandoc/filters/date.lua --template ../pandoc/templates/pandoc-latex-template/eisvogel.tex -o application.pdf ../src/application.md
