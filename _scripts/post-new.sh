#!/bin/sh

TITLE="$*"
if [ -z "${TITLE}" ]; then echo "Enter a title for your post, eg: $0 My awesome post"; exit 1; fi

POSTS_PATH="_posts"
if [ ! -d ${POSTS_PATH} ]; then 
  echo "Path, '${POSTS_PATH}', not found. Check this script: $0"
  exit 2
fi

FILENAME="${POSTS_PATH}/$(date '+%F_%H%M')_$(echo ${TITLE} | sed -ne 's/ /-/gp').md"

# mktemp
TMPFILE="$(mktemp jekyll.XXXXXXXXXX)"
# tempfile
#TMPFILE="$(tempfile -p jekyll)"

echo "---"                         >>${TMPFILE}
echo "layout: post"                >>${TMPFILE}
echo "title: ${TITLE}"             >>${TMPFILE}
echo "date: $(date '+%F %T %:z')"  >>${TMPFILE}
echo "disqus: 1"                   >>${TMPFILE}
echo "---"                         >>${TMPFILE}
echo ""                            >>${TMPFILE}

STAT_MOD="stat -c '%Y' ${TMPFILE}"
CHECK=$(${STAT_MOD})

# XXX: Make this recognize different editors, and set options for them
${EDITOR:-vi} + ${TMPFILE}

# String comparison seems to complain less than numeric.
# XXX: Check for shell compat issues
if [ "${CHECK}" != "$(${STAT_MOD})" ]; then
  echo "New post created!"
  cp ${TMPFILE} ${FILENAME}
else
  echo "Post aborted"
fi

rm ${TMPFILE}
