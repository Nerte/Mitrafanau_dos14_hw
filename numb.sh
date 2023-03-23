#!/bin/bash

numb(){
    echo "Введите номер на проверку"

    read -r numb

    if [[ "$numb" =~  ^\+?(375|80)\(?(33|29|44)\)?[0-9]{7}$ ]]
    then
        echo "Номер $numb корректный"
    else
        echo "Номер $numb некорректный"
    fi
}