#!/bin/sh

ANCHOR='</dash-links-container>\\n *</div>'

dest_file="$(ls public/build/app.*.js)"

while read -r line || [ -n "${line}" ]; do
    inject="${inject}${line}"
done < "$1"

sed -i "s|${ANCHOR}|\0 ${inject}|" "${dest_file}"