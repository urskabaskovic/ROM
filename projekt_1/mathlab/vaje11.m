(* ::Package:: *)

#1.naloga

podatki = dlmread('kolokviji.csv', ',') #uvoz podatkov

vsota = sum(podatki, 2) #vrsticna vsota

povprecje = round(mean(podatki, 2)) #vrsticno povprecje

ocene = izracunaj_oceno(povprecje) #ocene iz povprecij

zaporedje = (1:length(ocene))' #stolpec s stevilkami od 1 do dolzine tabele ocen
rezultat = [zaporedje, podatki, vsota, povprecje, ocene] #matrika

dlmwrite('rezultati.csv', rezultat, ',') #zapisemo rezultate, locene z vejico

#podatkovni tipi
disp('Tip rezultata')
class(rezultat)

disp('Tipi stolpcev')
class(podatki)
class(vsota)
class(povprecje)
class(zaporedje)
class(ocene)



% alternativa 3
frekvence = zeros(1, 5)
for n = 6:10
  frekvence(n-5) = length(ocene(ocene==n))
end





#2.naloga
#narisemo histogram
hist(ocene); % pove nam razporeditev ocen 

#dodatni paketki:
pkg install -forge io
pkg install -forge statistics
pkg load statistics

% alternativa 1
frekvence = tabulate(ocene)

% alternativa 2
izracunaj = @(n) length(ocene(ocene==n))
arrayfun(izracunaj, 6:10)  % 'map' za matlab

class(frekvence) #tip rezultata frekvence

bar(6:10, frekvence(6:10, 3)) #stolpicni diagram kot histogram

#narisemo grafikon
slika = figure()
bar(6:10, frekvence(6:10, 3), 'facecolor', 'r', 'edgecolor', 'b')
title('Porazdelitev ocen kolokvija')
xlabel ("Ocene");
ylabel ("Stevilo studentov");
text (10, 10, "Bravo!");
print(slika, 'slika.pdf')


#3.naloga
N = narascajoca(4)


#4.naloga
M = rand(4)
cas1_zacetek = tic; stevilo_sedel(A); cas1_konec = toc;
cas2_zacetek = tic; stevilo_sedel2(A); cas2_konec = cas2 = toc;

razloka_casov = (cas1_konec - cas1_zacetek) - (cas2_konec - cas2_zacetek)
#ce je razlika > 0, je hitrejsa stevilo_sedel,
#ce je < 0, je hitrejsa stevilo_sedel2,
#sicer sta enako hitri


#5.naloga
A = rand(2)
B = rotacija(A)
