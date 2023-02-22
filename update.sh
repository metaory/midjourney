#!/usr/bin/env bash

echo "<h1>midjourney</h1>" > README.md

for file in $(ls -1t $PWD/assets | head -10); do
  echo "
<p align="center">
  <h5>${file}</h5>
  <picture>
    <img width="90%" alt="mxflow" src="https://raw.githubusercontent.com/metaory/midjourney/master/assets/${file}">
  </picture>
</p>" >> README.md
done

