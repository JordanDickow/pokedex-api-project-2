#!/bin/bash

curl "http://localhost:4741/pokemons" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
