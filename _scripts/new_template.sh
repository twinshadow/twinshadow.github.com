
maketemp () {
  echo "$(mktemp /tmp/jekyll.XXXXXXXXXX)"
}

clean () {
  for f in /tmp/jekyll.*; do
    echo "Removing temp file: $f"
    rm -f "$f"
  done
}

tag () {
  printf "%-10s : %s\n" "$1" "$2"
}

header () {
  echo "---"
  tag 'title'    "$TITLE"
  tag 'subtitle' "$SUBTITLE"
  if [ "$AUTHOR" ]; then
    tag 'author'  "$AUTHOR"
  fi
  tag 'layout'  "$LAYOUT"
  tag 'created' "$(date -u +%FT%T%:z)"
  tag 'tags'    "$TAGS"
  echo "---"
  echo ''
}

postfile () {
  echo "_posts/$(date +%F)-$(echo "$TITLE" | tr ' ~`!@#$%^&*()+=[]\\{}|;:",./<>?' '_').md"
}

main () {
  echo "What, is your name?"
  read AUTHOR

  echo "What, is your quest?"
  read TITLE

  echo "$(randomquestion)"
  read SUBTITLE

  echo "Which layout is this post going to use? Leave blank for the default."
  read LAYOUT
  if [ -z "$LAYOUT" ]; then
    LAYOUT="post"
  fi

  echo "Type out some tags, comma-separated."
  read TAGS

  TEMPFILE="$(maketemp)"
  header >> "$TEMPFILE"
  HASH="$(md5sum $TEMPFILE)"
  vim -c "set spell spelllang=en" -c "set nonu" -c "set ft=markdown" + "$TEMPFILE"
  if [ "$(md5sum $TEMPFILE)" != "$HASH" ]; then
    echo "Saving the post to $(postfile)"
    cp "$TEMPFILE" "$(postfile)" || (echo "The copy returned an error. Make a copy of $TEMPFILE to save your post\!"; exit 1)
  fi
  clean

  echo -n "Should jekyll render the site? [N]: "
  read Q
  ([ "$Q" = "y" ] || [ "$Q" = "Y" ]) && jekyll
}

randomquestion () {
echo "\
What, is the capitol of Latvia?
What, is the airspeed velocity of an unlaiden swallow?
What, is your favorite color?\
" | shuf -n1
}

# I like to party
main
