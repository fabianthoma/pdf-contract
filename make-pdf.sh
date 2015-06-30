#!/bin/bash
printf '%s\n' "$@" | sort -n | tr '\n' ' ' | sed "s/$/\ $(echo $1 | sed -e 's/[\/&]/\\&/g')\.pdf/" | xargs convert
