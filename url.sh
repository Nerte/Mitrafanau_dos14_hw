#!/bin/bash

url(){
    echo "Введите url адрес на проверку"

    read -r url

    if [[ "$url" =~  ^(https?://)[A-Za-z0-9._%+-]+\.[A-Za-z]{2,4}/?$ ]]
    then
        echo "Адрес $url корректный"
    else
        echo "Адрес $url некорректный"
    fi
}