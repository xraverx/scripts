#!/bin/bash

# A script to open a list of favorite tabs in Firefox.
# Usage: ./fftabs.sh [URL1] [URL2] ...

# Check if Firefox is installed
if ! command -v firefox &>/dev/null; then
  echo "Firefox is not installed. Please install Firefox and try again."
  exit 1
fi

# Default URLs
default_urls=(
  "https://weather.com/weather/today"
  "https://keep.google.com"
  "https://calendar.google.com"
  "https://news.google.com"
  "https://drive.google.com"
  "https://music.youtube.com"
  "https://youtube.com"
  "https://chat.openai.com/chat"
  "https://chess.com"
  "https://reddit.com"
  "https://github.com"
  "https://wiki.archlinux.org"
)

# If there are command-line arguments, use them as URLs
if [ "$#" -gt 0 ]; then
  urls=("$@")
else
  urls=("${default_urls[@]}")
fi

# Create the URL string
url_string=""
for url in "${urls[@]}"; do
  url_string+="-url ${url} "
done

# Open the URLs in Firefox
nohup firefox ${url_string} &>/dev/null &
