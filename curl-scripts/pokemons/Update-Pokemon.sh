#!/bin/bash

curl "http://localhost:4741/pokemons/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "pokemon": {
      "name": "'"${NAME}"'"
    }
  }'


echo
