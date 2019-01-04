#!/bin/sh
for fortune in 8ball ferengi haiku sonnets; do
        cp $fortune /usr/share/games/fortunes/
        if [ "$?" -ne 0 ]; then
                echo "Installation error, aborting."
                exit;
        fi
        strfile /usr/share/games/fortunes/$fortune
        if [ "$?" -ne 0 ]; then
                echo "Installation error, aborting."
                exit;
        fi
done
