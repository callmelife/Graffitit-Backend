#!/bin/bash

API="https://graffiti-gallery.herokuapp.com"
URL_PATH="/sign-in"
EMAIL="575@575.com"
PASSWORD="1"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
