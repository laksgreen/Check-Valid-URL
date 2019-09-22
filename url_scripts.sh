#!/bin/bash
function validate_url(){
url=http://nginx.org/download/nginx-1.16.1.tar.gz
  if [[ `wget -S --spider $url  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
    return 0
  else
    return 1
  fi
}

if validate_url $endpoint; then
    echo "NGINX-1.16 is valid URL"
  else
    echo "NGINX-1.16 is invalid URL"
fi
