#!/bin/sh
DIR=$(dirname $0)
cd "${DIR}" || exit 1

for pdf in _build/pdf/*.pdf; do
  echo "Processing: ${pdf}"
  gs -o "${pdf}.distilled" -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress "${pdf}"
  mv "${pdf}.distilled" "${pdf}"
done
