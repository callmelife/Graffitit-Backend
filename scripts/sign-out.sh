#!/bin/bash

API="https://graffiti-gallery.herokuapp.com"
URL_PATH="/sign-out"
TOKEN="BAhJIiUzNWZlNjllNGUyNjRlZThiZTZiNzZhOGQ1Nzg3MzljOAY6BkVG--9ee03157864419f4d52814862b3e54d9ab63b8f9"
ID="32"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
