#!/usr/bin/env bash

echo "<h1>midjourney</h1>" > README.md

echo "<h1>Total assets: [$(ls $PWD/assets | wc -l)]</h1>" > README.md

i=0
for file in $(ls -1t $PWD/assets | head -10); do
  echo "
  <h1 align="center">
    <br>
    <h5>${i}::${file}</h5>
    <img width="90%" src="https://raw.githubusercontent.com/metaory/midjourney/master/assets/${file}" alt="${file}">
    <br>
    Midjourney Wallpapers
    <br>
    <br>
  </h1>
  " >> README.md
  i=$((i + 1))
done

