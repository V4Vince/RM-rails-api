#!/bin/bash

ID=8
TOKEN=BAhJIiVkMzY2MzY0Mjc1YzhkYWZlOGRkODJlZDQ2MjAyZDg4OAY6BkVG--55b4f4a74258ca6fc1c3f887d71f27c1e69994ee

curl --include --request PATCH http://localhost:4741/units/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "unit": {
      "unit_num": "10",
      "building_id": "6"
    }
  }'
