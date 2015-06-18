#!/bin/sh
word_master_thesis_template=NTNU\ mastermal.dotx

location_office11="${HOME}/Library/Application Support/Microsoft/Office/Brukermaler/Mine maler"

# this location seems dodgy, but is correct for *me* with Office 2016 Preview
location_office16="${HOME}/Library/Group Containers/UBF8T346G9.Office/User Content.localized/Templates.localized"

if [ $(uname) != 'Darwin'  ]; then
    echo 'This install script only works on OS X at the moment'
    exit 1
fi 

install_template(){
    location="$1"

    if [ -d "${location}" ]; then
        echo 'Installing master thesis template in ' ${location}
        ln -sf `pwd`/"${word_master_thesis_template}" "${location}/${word_master_thesis_template}" 
    fi
}

# Office 2011 for Mac
install_template "${location_office11}" 

# Office 2016 for Mac
install_template "${location_office16}" 
