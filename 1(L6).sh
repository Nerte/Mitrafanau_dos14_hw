#!/bin/bash

#функция типа help
usage(){
    echo "После вызова скрипта напишите любое предложение."
    exit 1
}

#создаем функцию которая берет все написанное и удаляет пробелы
func(){
    a=$*
    b="${a//' '}"
    echo "$* -> $b"
}

#основная функция main, в которой идет проверка на наличие аргументов
#и вызов функции, удаляющей пробелы
main(){
    if [[ $# -lt 1 ]]; then
        usage
    fi
    
    func "$@"
}

#вызов основной функции
main "$@"