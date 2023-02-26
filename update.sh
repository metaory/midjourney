#!/usr/bin/env bash

echo "<h1>midjourney</h1>" > README.md

MAX=${1:-20}
i=0
for file in $(ls -1t $PWD/assets | head -"$MAX"); do
  echo "
<p align="center">
  <h5>${i}::${file}</h5>
  <picture>
    <img width="90%" src="https://raw.githubusercontent.com/metaory/midjourney/master/assets/${file}">
  </picture>
</p>" >> README.md
i=$((i + 1))
done

