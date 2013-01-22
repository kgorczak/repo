#!/bin/bash
    echo "Podaj A: "
    read A
    echo "Podaj B: "
    read B
    echo "Podaj C: "
    read C
    DELTA="$((B*B-4*A*C))"
    if [ $DELTA -ge 0 ]; then
    PIERW=`echo "sqrt($DELTA)" | bc`
    fi
    ZERO=`echo "$DELTA==0" | bc`
    WIEKSZA=`echo "$DELTA>0" |bc`
    echo "Delta wynosi: $DELTA"
     echo "Pierwiastek z Delty wynosi: $PIERW"

        if [ "$ZERO" = 1 ]; then
           P0=`echo "(-1*$B)/(2*$A)" | bc`
            echo "Rownanie posiada jeden pierwiastek: $P0"
        elif [ "$WIEKSZA" = 1 ]; then
            P1=`echo "(-1*$B-$PIERW)/(2*$A)" | bc`
            P2=`echo "(-1*$B+$PIERW)/(2*$A)" | bc`
            echo "Rownanie posiada dwa pierwiastki: $P1  i  $P2"
        else
            echo "To rownanie nie posiada pierwiastkow"
        fi



