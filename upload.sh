. .env

node buildjson.js > $TMP_DIR/updated.json

curl -XPATCH -H 'Content-type: application/json' -H 'Authorization: '$API_KEY $FUSIONAUTH_URL/api/theme/$THEME_ID -d @updated.json

