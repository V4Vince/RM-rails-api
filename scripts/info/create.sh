#!/bin/bash

#post INFO to UNIT

TOKEN=BAhJIiVkMzY2MzY0Mjc1YzhkYWZlOGRkODJlZDQ2MjAyZDg4OAY6BkVG--55b4f4a74258ca6fc1c3f887d71f27c1e69994ee
ID=12

curl --include --request POST http://localhost:4741/units/$ID/infos \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "info": {
      "bedrooms": "1",
      "bathrooms": "0"
    }
  }'

#post INFO to BUILDING

  TOKEN=BAhJIiVkMzY2MzY0Mjc1YzhkYWZlOGRkODJlZDQ2MjAyZDg4OAY6BkVG--55b4f4a74258ca6fc1c3f887d71f27c1e69994ee
  ID=4

  curl --include --request POST http://localhost:4741/buildings/$ID/infos \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "info": {
        "bedrooms": "1",
        "bathrooms": "0"
      }
    }'
