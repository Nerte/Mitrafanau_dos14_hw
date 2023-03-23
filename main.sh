#!/bin/bash

. ./numb.sh
. ./url.sh
. ./email.sh
. ./pass.sh

#функция типа help
usage() {
    echo "Используйте функции email для проверки коррктности почты, numb для проверки коррктности номера телефона, url для проверки корректности url адреса"
    exit 1
}

#основная функция main
main() {

    #проверка, есть ли переданные аргументы, если нет,
    #help вызов функции типа
    if [[ $# -lt 1 ]]; then
        usage
    fi

    case $1 in
        email) email;;
        numb) url;;
        url) numb;;
        pass) pass;;
    esac
}

#вызов main со всеми аргументами
main "$@"
