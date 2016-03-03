#!/bin/bash

jekyll build
cp -r ./_site /tmp/WORKING_FEST_SITE
git checkout gh-pages
git rm -rf .
cp -r /tmp/WORKING_FEST_SITE/* .
git add -A
git commit -m 'built site'
rm -r /tmp/WORKING_FEST_SITE
git checkout master
git push origin gh-pages
