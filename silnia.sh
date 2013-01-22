#!/bin/bash

#Krzysztof Gorczak

#Skrypt obliczajacy silnie dla podanego argumentu
#Wywolanie: skrypt.sh LICZBA lub skrypt.sh, np. silnia.sh 5 lub silnia.sh 
#W momencie wywołania bez argumentu, skrypt poprosi nas o jego podanie
#Enjoy!

#Funkcja liczaca silnie
function factorial(){
	#Zmienne pomocnicze
	result=1
	iter=1;
	
	#Liczenie silni
	while [ $number -ge $iter ]; do
		result=$(($result * $iter))
		iter=$(($iter + 1 ))
	done

	#Drukowanie wyniku
	echo "Silnia to: $result"
exit 0
}

#Sprawdzam czy liczba argumentow jest wieksza niz 1, jezeli tak to koniec
if [ $# -gt 1 ]; then
        echo "ZA DUŻO ARGUMENTOW"
        exit 1
fi

#Sprawdzam czy nie podano zadnych argumentow
if [ $# -eq 0 ]; then
        echo "Brak argumentow, wpisz liczbe w przedziale: 0-20"
        read hand
    #Sprawdzam czy podany argument w takcie dzialania skryptu jest liczba i jest z zakresu (0 - 20)
        if [ $hand -eq $hand 2> /dev/null ] && [ $hand -ge 0 2> /dev/null ] && [ $hand -le 20 2> /dev/null ]; then
                number=$hand
        echo "Start counting factorial: $number!"
		#Warunki spełnione, licz silnie
		factorial
        else
                echo "$hand zla liczba, musi byc w przedziale: 0-20"
                exit 1
    fi
else
    #Sprawdzam czy podany argument z wiersza polecen jest liczba i i jest z zakresu (0 - 20)
    if [ $1 -eq $1 2> /dev/null ] && [ $1 -ge 0 2> /dev/null ] && [ $1 -le 20 2> /dev/null ]; then
        number=$1
        echo "Obliczanie silni: $number!"
		#Warunki spełnione, licz silnie
		factorial
        else
                echo "$1 Zly argument, musi byc w przedziale 0-20"
        exit 1
    fi
fi
