#!/bin/bash

echo "Cleaning site directory"
rm -rf site

download() {
  echo "Downloading ${1}"
  single-file "$1" "site/${2}.html"
}

download "https://ironmic.fm/" "index"
download "https://ironmic.fm/get-started" "get-started"
download "https://ironmic.fm/auth/login" "auth/login"
download "https://ironmic.fm/auth/forgot" "auth/forgot"
download "https://ironmic.fm/help/rss" "help/rss"
download "https://ironmic.fm/about" "about"
download "https://ironmic.fm/contact" "contact"
download "https://ironmic.fm/enterprise" "enterprise"
download "https://ironmic.fm/privacy-policy" "privacy-policy"
download "https://ironmic.fm/terms-of-service" "terms-of-service"
download "https://ironmic.fm/404" "404"

echo "Done"
