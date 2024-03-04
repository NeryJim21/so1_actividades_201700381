#!/bin/bash

    while true
    do
        if read msg < chat1; then
            echo "$msg"
        fi

        if read msg < chat2; then
            echo "$msg"
        fi
    done