#!/bin/bash

FILE_PATH="$1"
DROPBOX_DIR="$(cat ~/.dropbox/info.json | ./jq-osx-amd64 -r .personal.path)"
if [[ $FILE_PATH == "$DROPBOX_DIR"* ]]; then	
	AUTH_KEY="$(cat ~/.alfred-dropbox-auth)"
	DROPBOX_FILE_PATH="${FILE_PATH#$DROPBOX_DIR}"
    RESP_BODY=$(curl -X POST https://api.dropboxapi.com/2/sharing/create_shared_link --header "Authorization: Bearer ${AUTH_KEY}" --header "Content-Type: application/json" --data "{\"path\":\"${DROPBOX_FILE_PATH}\"}" -s) 
    echo ${RESP_BODY} | ./jq-osx-amd64 -r ".url"
	exit 0
else
    echo "The file you specified is not in your Dropbox folder"
    exit 1
fi
