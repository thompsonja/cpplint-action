#!/bin/sh -eu

cpplint \
  --recursive \
  --headers=${INPUT_HEADERS} \
  --extensions=${INPUT_EXTENSIONS} \
  --filter=${INPUT_FILTER} \
  .
