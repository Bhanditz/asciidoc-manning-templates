#!/usr/bin

# You must set BOOK_HOME to the home folder for your book project
# BOOK_HOME=$HOME/Projects/BookProjects/walls.sia4

cat props.adoc $1.adoc > $1.merged.adoc
asciidoctor -T $BOOK_HOME/manuscript/templates -a cfn=$1 -b docbook45 -o $BOOK_HOME/manuscript/$1.xml $1.merged.adoc
rm $1.merged.adoc
