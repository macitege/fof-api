#!/bin/bash

curl "http://localhost:4741/posts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "post": {
      "title": "'"${TITLE}"'",
      "body": "'"${BODY}"'",
      "address": "'"${ADRS}"'",
      "lat": "'"${LAT}"'",
      "lng": "'"${LNG}"'",
      "image_1": "'"${IMG1}"'",
      "image_2": "'"${IMG2}"'",
      "image_3": "'"${IMG3}"'"
    }
  }'

echo
