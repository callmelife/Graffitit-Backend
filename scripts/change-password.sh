#!/bin/bash

API="https://graffiti-gallery.herokuapp.com"
URL_PATH="/change-password"
ID="32"
TOKEN="BAhJIiUzNWZlNjllNGUyNjRlZThiZTZiNzZhOGQ1Nzg3MzljOAY6BkVG--9ee03157864419f4d52814862b3e54d9ab63b8f9"
OLDPW="2"
NEWPW="1"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
