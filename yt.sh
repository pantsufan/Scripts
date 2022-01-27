#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    read -rp "Search query: " query
else
    query="$1"
fi
query="${query// /+}"
url="https://vid.puffyan.us/api/v1/search/?q=${query}&fields=title,videoId,author&pretty=1"

mpv "$(curl -s "${url}" | jq -r '.[]| .title + " " + .videoId' | fzf --with-nth='1..-2' | awk '{video="https://vid.puffyan.us/watch?v="$NF; print video}')" || echo "No video selected"
