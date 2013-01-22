#!/bin/bash
    echo "Podaj A: "
    read A
    echo "Podaj B: "
    read B
    echo "Podaj C: "
    read C
    DELTA="$((B*B-4*A*C))"
    if [ $DELTA -ge 0 ]; then
    PIERW=`echo "scale=5 ; sqrt($DELTA)" | bc`
    fi
    CZYZERO=`echo "$DELTA==0" | bc`
    CZYWIEKSZE=`echo "$DELTA>0" |bc`
    echo "Delta wynosi: $DELTA"
     echo "Pierwiastek z delty wynosi: $PIERW"
    
if [ $A -le 0 ]; then
echo " A <= 0, brak rozwiazania"

exit 0
fi

        if [ "$CZYZERO" = 1 ]; then
           P0=`echo "scale=5 ;(-1*$B)/(2*$A)" | bc`
            echo "Rownanie posiada jeden pierwiastek: $P0"
        elif [ "$CZYWIEKSZE" = 1 ]; then
            P1=`echo "scale=5 ;(-1*$B-$PIERW)/(2*$A)" | bc`
            P2=`echo "scale=5 ;(-1*$B+$PIERW)/(2*$A)" | bc`
            echo "Rownanie posiada dwa pierwiastki: $P1  i  $P2"
        else
            echo "To rownanie nie posiada pierwiastkow"
        fi






