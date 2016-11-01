#!/bin/bash

TOKEN=BAhJIiVkMzY2MzY0Mjc1YzhkYWZlOGRkODJlZDQ2MjAyZDg4OAY6BkVG--55b4f4a74258ca6fc1c3f887d71f27c1e69994ee

curl --include --request POST http://localhost:4741/buildings \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "building": {
      "building_name": "Big Yellow",
      "address": "123 Yook st"
    }
  }'
