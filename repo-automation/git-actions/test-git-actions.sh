#!/usr/bin/env bash

./make-changes.sh
./push-changes.sh
./fetch-changes.sh

echo "Zmeny boli zaznamenane, pushnute a fetchnute."
