#!/bin/sh

npm install mdpdf -g
mdpdf README.md CV-Kristaps-Grinbergs.pdf
DATE=`date "+%d.%m.%Y %H %H:%M:%S"`
git commit CV-Kristaps-Grinbergs.pdf -m "Generated PDF ${DATE}"
git push
