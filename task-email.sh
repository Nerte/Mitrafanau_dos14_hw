#!/bin/bash

email(){
    echo "Введите email адрес на проверку"

    read -r email

    if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
    then
        echo "Адрес $email корректный"
    else
        echo "Адрес $email некорректный"
    fi
}