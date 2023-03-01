#!/usr/bin/env bash

echo "
<h1>Midjourney Wallpapers</h1>
<br>
<h3>Total assets: [$(ls $PWD/assets | wc -l)]</h3>
" > README.md

i=0
for file in $(ls -1t $PWD/assets | head -10); do
  echo "
<h1 align="center">
  <h5>${i}::${file}</h5>
  <img width="90%" src="https://raw.githubusercontent.com/metaory/midjourney/master/assets/${file}" alt="${file}">
  <br>
</h1>
  " >> README.md
  i=$((i + 1))
done

