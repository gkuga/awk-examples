#!/bin/sh

echo 'BEGIN Block only:'

awk 'BEGIN { print "line one\nline two\nline three" }'

echo

echo 'END Block only:' # The comannd that has only end block needs input argument.
awk 'END { print "Total number of lines: " NR }' marks.txt

echo

echo 'BEGIN block, Body block, END block:'
awk 'BEGIN{printf "Sr No\tName\tSub\tMarks\n"} {print} END{print "end"}' marks.txt

echo

echo 'pattern and body block:'
awk '/^1\)/ {print}' marks.txt

echo

echo 'multiple patterns and body blocks:'
awk '
1 { print "This line is always printed: " $0 }
0 { print "This line is never printed: " $0 }
' marks.txt

echo


echo 'from file:'
awk -f command.awk marks.txt
