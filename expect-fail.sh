#!/bin/bash 
pnpm run sleep &
pid=$!
sleep .3
echo -e "Now sending break...\n"
kill -s INT $pid
wait $pid
echo "pnpm run exit: $?    (but should be non-zero!)"
