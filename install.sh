#!/bin/sh
for fortune in sonnets 8ball; do
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
