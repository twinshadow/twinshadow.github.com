#!/bin/sh

$PATH="$*"
$TITLE="$(basename ${PATH})"

if [ -n "$(echo ${TITLE} | | grep '\.\(...\|htm\|html\|md\|mdwn\|markdown\|textile\)$')" ]; then #it is a file 
  # Does path have suffix? Create the file, grab the title
  TITLE="$(echo ${TITLE} | sed -ne 's/\.[^\/\.]*$//p')"
else
  # Does the path have no suffix? Get title from path and create an index.md file in path
  mkdir -p "${PATH}"
  PATH="${PATH}/index.md" #this should be set somewhere
  touch "${PATH}" 
fi;

# mktemp
TMPFILE="$(mktemp jekyll.XXXXXXXXXX)"
# tempfile
#TMPFILE="$(tempfile -p jekyll)"

echo "---"                         >>${TMPFILE}
echo "layout: page"                >>${TMPFILE}
echo "title: ${TITLE}"             >>${TMPFILE}
echo "date: $(date '+%F %T %:z')"  >>${TMPFILE}
echo "disqus: 0"                   >>${TMPFILE}
echo "---"                         >>${TMPFILE}
echo ""                            >>${TMPFILE}

STAT_MOD="stat -c '%Y' ${TMPFILE}"
CHECK="$(${STAT_MOD})"

# XXX: Make this recognize different editors, and set options for them
${EDITOR:-vi} + ${TMPFILE}

# String comparison seems to complain less than numeric.
# XXX: Check for shell compat issues
if [ "${CHECK}" != "$(${STAT_MOD})" ]; then
  echo "New post created!"
  cp "${TMPFILE}" "${FILENAME}"
else
  echo "Post aborted"
fi

rm "${TMPFILE}"
