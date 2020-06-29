#!/bin/sh -eu

EXCLUDES=""
if [[ -n "${INPUT_EXCLUDES:-""}" ]]; then
  # Do not let shell expand globs, let cpplint handle them instead.
  set -f
  # Convert comma separated excludes into --exclude=<path> args.
  EXCLUDES="$(echo ${INPUT_EXCLUDES//,/ } | sed 's/[^ ]* */--exclude=&/g')"
  set +f
fi
readonly EXCLUDES

cpplint \
  --recursive \
  --headers=${INPUT_HEADERS} \
  --extensions=${INPUT_EXTENSIONS} \
  --filter=${INPUT_FILTER} \
  ${EXCLUDES:+${EXCLUDES}} \
  .
