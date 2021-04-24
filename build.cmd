@echo off

mkdir build
cd build
pandoc --fail-if-warnings --lua-filter ../pandoc/filters/date.lua --template ../pandoc/templates/pandoc-latex-template/eisvogel.tex -o application.pdf ../src/application.md