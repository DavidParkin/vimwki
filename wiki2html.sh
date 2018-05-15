#!/bin/bash -x

FORCE="$1"
SYNTAX="$2"
EXTENSION="$3"
OUTPUTDIR="$4"
INPUT="$5"
CSSFILE="$6"

#SYNTAX="markdown_github"
FILE=$(basename "$INPUT")
FILENAME=$(basename "$INPUT" .$EXTENSION)
FILEPATH=${INPUT%$FILE}
OUTDIR=${OUTPUTDIR%$FILEPATH}
OUTPUT="$OUTDIR"/$FILENAME
CSSFILENAME=$(basename "$6")

HAS_MATH=$(grep -o "\$.\+\$" "$INPUT")
if [ ! -z "$HAS_MATH" ]; then
    MATH="--mathjax=./MathJax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
else
    MATH=""
fi

# >&2 echo "MATH: $MATH"

sed -r 's/(\[.+\])\(([^#][^)#]+)([^)]*)\)/\1(\2.html\3)/g' <"$INPUT" | pandoc $MATH -s -f $SYNTAX -t html -c $CSSFILENAME | sed -r 's/<li>(.*)\[ \]/<li class="todo done0">\1/g; s/<li>(.*)\[\.\]/<li class="todo done1">\1/g; s/<li>(.*)\[o\]/<li class="todo done2">\1/g; s/<li>(.*)\[O\]/<li class="todo done3">\1/g; s/<li>(.*)\[X\]/<li class="todo done4">\1/g' >"$OUTPUT.html"
