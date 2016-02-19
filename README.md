# Alfred Plugin to Copy a File's Dropbox Link
An [Alfred](https://www.alfredapp.com/) plugin to copy a dropbox link for a chosen file

##  Usage 

To install the plugin in Alfred download the [latest plugin package](https://github.com/uric/alfred-copy-dropbox-link/raw/master/copy-dropbox-link.alfredworkflow) and double click it. It should open Alfred and show you the workflow. 

Next, you will need to configure the workflow to use your Dropbox authentication key. 
For that you'll need a Dropbox v2 API token. The easiest way to get this, is by logging into your Dropbox account in your browser, and pointing it to one of the calls in the API explorer, e.g. https://dropbox.github.io/dropbox-api-v2-explorer/#users_get_space_usage 

When you get to this page, click the "Get Token" button at the top right

![Dropbox Auth Token](https://github.com/uric/alfred-copy-dropbox-link/raw/master/db-get-token.png)

Once you have the token, on Alfred search box, type `db auth your-auth-token`, where `your-auth-token` is the token you got from Dropbox in the previous step. 

![Configuring Auth Token in Alfred](https://github.com/uric/alfred-copy-dropbox-link/raw/master/db-auth.png). 

The workflow will attempt to authenticate to the Dropxbox API and fetch your account details. If it's successful you will see a notification indicating so. 

After that, you can just search for a file in Alfred, and then hit the right arrow key to show file options. You should see there "Copy Dropbox Link". When clicked the workflow will fetch the link using the Dropbox API and store it in your clipboard. 

![Copy Dropbox Link](https://github.com/uric/alfred-copy-dropbox-link/raw/master/copy-link.png). 


