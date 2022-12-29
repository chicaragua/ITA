#!/bin/bash
#GH_OWNER=$GH_OWNER
#GH_REPOSITORY=$GH_REPOSITORY
GH_TOKEN=$GH_TOKEN

#echo 'ls'



./config.sh --unattended --replace --url https://github.com/chicaragua/ita --token ${GH_TOKEN}

./run.sh & wait $!