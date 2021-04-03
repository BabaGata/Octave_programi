clear ; close all; clc
pkg load io;

% Dodavanje puteva di se nalaze funkcije
cd ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\1');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\FunkcijePogreske');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\Grafovi');

% Ucitavanje podataka mjerenja
a = load('1.1.a.txt');
b = load('1.1.b.txt');
c = load('1.1.c.txt');
r = load('1.1.r.txt')./2;
h = load('1.1.h.txt');
r1 = load('1.1.r1.txt')./2;
r2 = load('1.1.r2.txt')./2;
h1 = load('1.1.h1.txt');
d1 = load('1.2.d1.txt');
d2 = load('1.2.d2.txt');

% zadatak 1.1.

PogreskeA = Pogreske(a);
KvadratPa = PogreskeA.^2;
SrednjaA = AbsolutnaVrijednost(a);
SEa = StandardnaDevijacijaAritmetickeSredine(a);
SumA = sum(a);
status = xlswrite ('1.xlsx', SumA, '1.1.a', 'E1');
status = xlswrite ('1.xlsx', PogreskeA, '1.1.a', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPa, '1.1.a', 'B1:B6');
status = xlswrite ('1.xlsx', SrednjaA, '1.1.a', 'C1:C6');
status = xlswrite ('1.xlsx', SEa, '1.1.a', 'D1:D6');


PogreskeB = Pogreske(b);
KvadratPb = PogreskeB.^2;
SrednjaB = AbsolutnaVrijednost(b);
SEb = StandardnaDevijacijaAritmetickeSredine(b);
SumB = sum(b);
SemB = sum(PogreskeB);
SamB = sum(KvadratPb);
status = xlswrite ('1.xlsx', SemB, '1.1.b', 'E2');
status = xlswrite ('1.xlsx', SamB, '1.1.b', 'E3');
status = xlswrite ('1.xlsx', SumB, '1.1.b', 'E1');
status = xlswrite ('1.xlsx', PogreskeB, '1.1.b', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPb, '1.1.b', 'B1:B6');
status = xlswrite ('1.xlsx', SrednjaB, '1.1.b', 'C1:C6');
status = xlswrite ('1.xlsx', SEb, '1.1.b', 'D1:D6');


PogreskeC = Pogreske(c);
KvadratPc = PogreskeC.^2;
SrednjaC = AbsolutnaVrijednost(c);
SEc = StandardnaDevijacijaAritmetickeSredine(c);
SumC = sum(c);
SemC = sum(PogreskeC);
SamC = sum(KvadratPc);
status = xlswrite ('1.xlsx', SemC, '1.1.c', 'E2');
status = xlswrite ('1.xlsx', SamC, '1.1.c', 'E3');
status = xlswrite ('1.xlsx', SumC, '1.1.c', 'E1');
status = xlswrite ('1.xlsx', PogreskeC, '1.1.c', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPc, '1.1.c', 'B1:B6');
status = xlswrite ('1.xlsx', SrednjaC, '1.1.c', 'C1:C6');
status = xlswrite ('1.xlsx', SEc, '1.1.c', 'D1:D6');


Pogresker = Pogreske(r);
KvadratPr = Pogresker.^2;
Srednjar = AbsolutnaVrijednost(r);
SEr = StandardnaDevijacijaAritmetickeSredine(r);
SumR = sum(r);
SemR = sum(Pogresker);
SamR = sum(KvadratPr);
status = xlswrite ('1.xlsx', SemR, '1.1.r', 'E2');
status = xlswrite ('1.xlsx', SamR, '1.1.r', 'E3');
status = xlswrite ('1.xlsx', SumR, '1.1.r', 'E1');
status = xlswrite ('1.xlsx', Pogresker, '1.1.r', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPr, '1.1.r', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjar, '1.1.r', 'C1:C6');
status = xlswrite ('1.xlsx', SEr, '1.1.r', 'D1:D6');

Pogreskeh = Pogreske(h);
KvadratPh = Pogreskeh.^2;
Srednjah = AbsolutnaVrijednost(h);
SEh = StandardnaDevijacijaAritmetickeSredine(h);
SumH = sum(h);
SemH = sum(Pogreskeh);
SamH = sum(KvadratPh);
status = xlswrite ('1.xlsx', SemH, '1.1.h', 'E2');
status = xlswrite ('1.xlsx', SamH, '1.1.h', 'E3');
status = xlswrite ('1.xlsx', SumH, '1.1.h', 'E1');
status = xlswrite ('1.xlsx', Pogreskeh, '1.1.h', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPh, '1.1.h', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjah, '1.1.h', 'C1:C6');
status = xlswrite ('1.xlsx', SEh, '1.1.h', 'D1:D6');

Pogresker1 = Pogreske(r1);
KvadratPr1 = Pogresker1.^2;
Srednjar1 = AbsolutnaVrijednost(r1);
SEr1 = StandardnaDevijacijaAritmetickeSredine(r1);
SumR1 = sum(r1);
SemR1 = sum(Pogresker1);
SamR1 = sum(KvadratPr1);
status = xlswrite ('1.xlsx', SemR1, '1.1.r1', 'E2');
status = xlswrite ('1.xlsx', SamR1, '1.1.r1', 'E3');
status = xlswrite ('1.xlsx', SumR1, '1.1.r1', 'E1');
status = xlswrite ('1.xlsx', Pogresker1, '1.1.r1', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPr1, '1.1.r1', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjar1, '1.1.r1', 'C1:C6');
status = xlswrite ('1.xlsx', SEr1, '1.1.r1', 'D1:D6');

Pogresker2 = Pogreske(r2);
KvadratPr2 = Pogresker2.^2;
Srednjar2 = AbsolutnaVrijednost(r2);
SEr2 = StandardnaDevijacijaAritmetickeSredine(r2);
SumR2 = sum(r2);
SemR2 = sum(Pogresker2);
SamR2 = sum(KvadratPr2);
status = xlswrite ('1.xlsx', SemR2, '1.1.r2', 'E2');
status = xlswrite ('1.xlsx', SamR2, '1.1.r2', 'E3');
status = xlswrite ('1.xlsx', SumR2, '1.1.r2', 'E1');
status = xlswrite ('1.xlsx', Pogresker2, '1.1.r2', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPr2, '1.1.r2', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjar2, '1.1.r2', 'C1:C6');
status = xlswrite ('1.xlsx', SEr2, '1.1.r2', 'D1:D6');

Pogreskeh1 = Pogreske(h1);
KvadratPh1 = Pogreskeh1.^2;
Srednjah1 = AbsolutnaVrijednost(h1);
SumH1 = sum(h1);
SemH1 = sum(Pogreskeh1);
SamH1 = sum(KvadratPh1);
status = xlswrite ('1.xlsx', SemH1, '1.1.h1', 'E2');
status = xlswrite ('1.xlsx', SamH1, '1.1.h1', 'E3');
status = xlswrite ('1.xlsx', SumH1, '1.1.h1', 'E1');
SEh1 = StandardnaDevijacijaAritmetickeSredine(h1);
status = xlswrite ('1.xlsx', Pogreskeh1, '1.1.h1', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPh1, '1.1.h1', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjah1, '1.1.h1', 'C1:C6');
status = xlswrite ('1.xlsx', SEh1, '1.1.h1', 'D1:D6');

% Zadatak 1.2.

Pogresked1 = Pogreske(d1);
KvadratPd1 = Pogresked1.^2;
Srednjad1 = AbsolutnaVrijednost(d1);
SEd1 = StandardnaDevijacijaAritmetickeSredine(d1);
SumD1 = sum(d1);
SemD1 = sum(Pogresked1);
SamD1 = sum(KvadratPd1);
status = xlswrite ('1.xlsx', SemD1, '1.2.d1', 'E2');
status = xlswrite ('1.xlsx', SamD1, '1.2.d1', 'E3');
status = xlswrite ('1.xlsx', SumD1, '1.2.d1', 'E1');
status = xlswrite ('1.xlsx', Pogresked1, '1.2.d1', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPd1, '1.2.d1', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjad1, '1.2.d1', 'C1:C6');
status = xlswrite ('1.xlsx', SEd1, '1.2.d1', 'D1:D6');

Pogresked2 = Pogreske(d2);
KvadratPd2 = Pogresked2.^2;
Srednjad2 = AbsolutnaVrijednost(d2);
SEd2 = StandardnaDevijacijaAritmetickeSredine(d2);
SumD2 = sum(d2);
SemD2= sum(Pogresked2);
SamD2 = sum(KvadratPd2);
status = xlswrite ('1.xlsx', SemD2, '1.2.d2', 'E2');
status = xlswrite ('1.xlsx', SamD2, '1.2.d2', 'E3');
status = xlswrite ('1.xlsx', SumD2, '1.2.d2', 'E1');
status = xlswrite ('1.xlsx', Pogresked2, '1.2.d2', 'A1:A6');
status = xlswrite ('1.xlsx', KvadratPd2, '1.2.d2', 'B1:B6');
status = xlswrite ('1.xlsx', Srednjad2, '1.2.d2', 'C1:C6');
status = xlswrite ('1.xlsx', SEd2, '1.2.d2', 'D1:D6');

% Obujmi:

Vkvadra = Obujam (a, b, c);
Vvaljka = ObujamValjka (r, h);
Vcijevi = ObujamCijevi (r1, r2, h1);

[AbsVkvadra, SEVkvadra, PogreskeVkvadra, KvadratiVkvadra] = Sve (Vkvadra);
[AbsVvaljka, SEVvaljka, PogreskeVvaljka, KvadratiVvaljka] = Sve (Vvaljka);
[AbsVcijevi, SEVcijevi, PogreskeVcijevi, KvadratiVcijevi] = Sve (Vcijevi);

IspisSvega (AbsVkvadra, SEVkvadra, PogreskeVkvadra, KvadratiVkvadra, Vkvadra, 'Obujmi.xlsx', 'Kvadar');
IspisSvega (AbsVvaljka, SEVvaljka, PogreskeVvaljka, KvadratiVvaljka, Vvaljka, 'Obujmi.xlsx', 'Valjak');
IspisSvega (AbsVcijevi, SEVcijevi, PogreskeVcijevi, KvadratiVcijevi, Vcijevi, 'Obujmi.xlsx', 'Cijev');

