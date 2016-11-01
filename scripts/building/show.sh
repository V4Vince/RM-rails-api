#!/bin/bash
ID=1
TOKEN=BAhJIiVkMzY2MzY0Mjc1YzhkYWZlOGRkODJlZDQ2MjAyZDg4OAY6BkVG--55b4f4a74258ca6fc1c3f887d71f27c1e69994ee

curl --include --request GET http://localhost:4741/buildings/$ID \
  --header "Authorization: Token token=$TOKEN"
