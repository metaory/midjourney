#!/bin/bash

i=0
base='https://raw.githubusercontent.com/metaory/midjourney/master'
count=$(find . -type f -name "*.png" -printf '%f\n' | wc -l)

cat <<< "
<h1>Midjourney Wallpapers</h1>
<br>

> [!Tip]
> Total assets: <kbd>${count}</kbd>

> [!Note]
> To improve page load,
>
> every **5 items** is not collapsed

<br>
" > README.md

for f in assets/*.png; do
  state='open'

  (( i % 5 )) && state=''
  (( i++ ))

  cat <<< "
<details ${state}>
  <summary>
    <kbd>${i}</kbd> 𑁋 <code>${f##*/}</code>
  </summary>
  <img src=\"${base}/${f}\" alt=\"${f}\">
</details>"  >> README.md
done

cat <<< "
---

## License

[MIT](LICENSE)" >> README.md

# vim: ft=bash
