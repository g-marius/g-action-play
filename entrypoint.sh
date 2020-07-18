#!/bin/sh

printf "%s\n" "Debug information:"

for v in $(env); do
    printf "%s\n" "${v}" | egrep "GITHUB|INPUT";
done

printf "%s\n" "---"
printf "%s\n" "Event:"

jq . $GITHUB_EVENT_PATH