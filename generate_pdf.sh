#!/bin/sh

npm install mdpdf -g
mdpdf README.md CV-Kristaps-Grinbergs.pdf
# if [ "$TRAVIS" = "true" ]
# then
#   echo "Don't push on CI"
# else
DATE=`date "+%d.%m.%Y %H %H:%M:%S"`

if [ "$TRAVIS" = "true" ]
  git checkout master
fi

git commit CV-Kristaps-Grinbergs.pdf -m "Generated PDF ${DATE}"
git push
echo "Pushed new PDF"
# fi
