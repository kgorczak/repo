#zad1 

grep ^. plik.txt 

#zad2


grep ^[0123456789] pl*

#zad3

grep '^........r' * -l
grep -E '^.{8}r.*' plik.txt

#zad4

grep -c bash /etc/passwd


#zad 5 

grep [IVXLCDM] plik.txt
grep -E "(X|D|C|M|V|L|I){1,}" plik.txt
