#!/bin/bash

curl "http://localhost:4741/pokemons" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pokemon": {
      "name": "'"${NAME}"'"
    }
  }'

echo
