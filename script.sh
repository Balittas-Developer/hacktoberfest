#!/bin/zsh

from=40da414d
to=a07c895e
src=/Users/iosdev/Documents/
dest=/tmp/diff

for file in $(git diff --name-only ${from}..${to})
do
  if test -f "$file"; then
    echo "process $src$file"
    mkdir -p "$(dirname "$dest$file")" && cp "$src$file" "$dest$file"
  fi
done

