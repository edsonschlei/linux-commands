#!/bin/bash

#
# The following page have the link for the latest version of ica client
#
# https://www.citrix.com/downloads/workspace-app/linux/workspace-app-for-linux-latest.html
#
# This script download the page
# extract the path of the latest amd64 version
# donwload the file
# install the downloaed file
#
# if you need to remove icaclient use the followin command:
# sudo apt purge icaclient
#

cd /tmp
rm -rf install-citrix
mkdir install-citrix
cd install-citrix


# Check for update
# Download the current page with the latest version infos
curl -s https://www.citrix.com/downloads/workspace-app/linux/workspace-app-for-linux-latest.html > latest.html

# Extract the anchor with the link for the latest amd64 version
# The link is somethin like this:
# rel="//downloads.citrix.com/18880/icaclient_20.12.0.12_amd64.deb?__gda__=1608309306_e87746ffdc61b2dbbea1d1c0601172d0"
cat latest.html | grep "rel=\"//downloads.citrix.com.*icaclient_.*amd64.*\.deb" > latest-line.txt

# now extract from the anchor line the rel value
# The input is something like this:
# <a href="javascript:void(0);" data-secureportal="false" class="ctx-dl-link toggle-direct-dl ctx-photo" data-authoreula="true" rel="//downloads.citrix.com/18880/icaclient_20.12.0.12_amd64.deb?__gda__=1608309967_8574acd71f8dff61d016e870c27e6a50" id="downloadcomponent">
BASE_URL=$(sed "s/.* rel=\"\(.*\)\" .*/\1/" latest-line.txt)
echo "BASE_URL=$BASE_URL"

# add the https: to the BASE_URL found
DOWNLOAD_URL="https:$BASE_URL"
echo "DOWNLOAD_URL=$DOWNLOAD_URL"

# Donwload the file and save the output into icaclient.deb
wget -O icaclient.deb $DOWNLOAD_URL

DOWNLOADED_VERSION=$(dpkg-deb -f icaclient.deb Version)
echo "Downloaded Version:$DOWNLOADED_VERSION"

ALREADY_INSTALLED=$(dpkg -s icaclient | grep -c "$DOWNLOADED_VERSION")

if [[ $ALREADY_INSTALLED == 0 ]]; then
    # Install the new package
    echo "Installing version:$DOWNLOADED_VERSION"
    sudo dpkg -i icaclient.deb
else
    echo "Version already installed:$DOWNLOADED_VERSION"
fi


