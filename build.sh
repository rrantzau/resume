#! /usr/bin/env bash

do
  echo $f
  python -m markdown -x markdown.extensions.extra -x markdown.extensions.codehilite -x markdown.extensions.footnotes -x markdown.extensions.smarty -x markdown.extensions.tables -x markdown.extensions.toc $f > $f.tmp
  ./add_css.py $f.tmp resume.css > $f.html
  rm $f.tmp
done

find . -iname "*.md.html" -exec bash -c 'mv "$0" "${0%\.md.html}.html"' {} \;
