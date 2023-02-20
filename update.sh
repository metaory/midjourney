#!/usr/bin/env bash

echo "<h1>midjourney</h1>" > README.md

for file in $PWD/assets/*; do
  echo "${file##*/} in ./assets"
  echo "
<p align="center">
  <picture>
    <img width="90%" alt="mxflow" src="https://raw.githubusercontent.com/metaory/midjourney/master/assets/${file##*/}">
  </picture>
</p>" >> README.md
done

