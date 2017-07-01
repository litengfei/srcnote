#!/usr/bin/env bash
ctags -R --exclude=.git --exclude=build --fields=+l

find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" -o -name "*.java" > cscope.files
cscope -bkq -i cscope.files
rm cscope.files
