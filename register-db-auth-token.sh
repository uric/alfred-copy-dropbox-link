DB_AUTH_TOKEN="$1"
RETURN_CODE=$(curl -X POST https://api.dropboxapi.com/2/users/get_current_account --header "Authorization: Bearer ${DB_AUTH_TOKEN}" --header "Content-Type: application/json" --data "null" -i -s | grep "HTTP/2" | awk {'print $2'})

if [ "$RETURN_CODE" = "200" ]; then
    echo "${DB_AUTH_TOKEN}" > ~/.alfred-dropbox-auth
	echo "Successfully authorized your Dropbox account!"
	exit 0
else
    echo "Could not autorize your dropbox account, error $RETURN_CODE"
    exit 1
fi
