clear ; close all; clc
pkg load io;

% Dodavanje puteva di se nalaze funkcije
cd ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\3');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\FunkcijePogreske');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\Grafovi');

% Ucitavanje podataka mjerenja
data1 = load('3.1.2.txt');
data2 = load('3.2.txt');
data3 = load('3.2.b.txt');
data4 = load('3.2.e.txt');

% Zadtak 3.1.
m = data1(1:4,1)./1000;
n1 = data1(1:4,2);
n2 = data1(1:4,3);
n3 = data1(1:4,4);
n_1 = data1(5:8,3);
n_2 = data1(5:8,2);
n_3 = data1(5:8,4);
mp = 10/1000000;

n0 = Otklon (n1, n2, n3);
n_0 = Otklon (n_1, n_2, n_3);
omega = OsjetljivostVage(mp, n0, n_0);
SrednjaOmega = AbsolutnaVrijednost(omega);
SEomega = StandardnaDevijacijaAritmetickeSredine(omega);

status = xlswrite ('3.xlsx', n0, '3.1.n0iOmega', 'A1:A6');
status = xlswrite ('3.xlsx', n_0, '3.1.n0iOmega', 'B1:B6');
status = xlswrite ('3.xlsx', omega, '3.1.n0iOmega', 'C1:C6');
status = xlswrite ('3.xlsx', SrednjaOmega, 'AbsiSE', 'A1');
status = xlswrite ('3.xlsx', SEomega, 'AbsiSE', 'A2');

Plot(m, omega, 'Masa/kg', 'Omega', 'Osjetljivost u ovisnosti o optere?enju');
print -dpng "3.1.2.b.png";

% Zadatak 3.1.3
n = n0(1,1);
n11 = 3;
n12 = -3;
n13 = 0;
m1 = 27.27/1000;
n10 = Otklon (n11, n12, n13);
E1 = KorekcijaVage (n, n10, SrednjaOmega);
X1 = TrazenaMasa(m1, E1);

status = xlswrite ('3.xlsx', X1, '3.1.Masa', 'A1');

% Bordina metoda

n21 = 6;
n22 = -4;
n23 = 3;
m2 = 12.580/1000;
n20 = Otklon (n21, n22, n23);
E2 = KorekcijaVage (n, n20, SrednjaOmega);
X2 = TrazenaMasa(m2, E2);

status = xlswrite ('3.xlsx', X2, '3.1.Masa', 'A5');

n31 = 15;
n32 = -15;
n33 = 5;
m3 = 17.870/1000;
n30 = Otklon (n31, n32, n33);
E3 = KorekcijaVage (n, n30, SrednjaOmega);
X3 = TrazenaMasa(m3, E3);

status = xlswrite ('3.xlsx', X3, '3.1.Masa', 'A6');

BordinaMasa = X3-X2;
status = xlswrite ('3.xlsx', BordinaMasa, '3.1.Masa', 'A7');

% Gaussova metoda

n41 = 15;
n42 = -5;
n43 = 4;
m4 = 39.19/1000;

n51 = 7;
n52 = -4;
n53 = 2;
m5 = 39.19/1000;

n40 = Otklon (n41, n42, n43);
E4 = KorekcijaVage (n, n40, SrednjaOmega);
X4 = TrazenaMasa(m4, E4);
status = xlswrite ('3.xlsx', X4, '3.1.Masa', 'A2');

n50 = Otklon (n51, n52, n53);
E5 = KorekcijaVage (n, n50, SrednjaOmega);
X5 = TrazenaMasa(m5, E5);
status = xlswrite ('3.xlsx', X5, '3.1.Masa', 'A3');

GaussMasa = AbsolutnaVrijednost([X4;X5]);
status = xlswrite ('3.xlsx', GaussMasa, '3.1.Masa', 'A4');

% Zadatak 3.2.a

T = data2/10;
DobraKombinacija (T, '3.xlsx', 'Zadatak3.1.aPeriodT');


% Zadatak 3.2.b
x = 4;
mx = 381.491/1000;
T1 = data3/10;
DobraKombinacija (T1, '3.xlsx', 'Zadatak3.2.aPeriodT1');

Plot (T1, [0:5]', 'Period', 'Masa', 'Pronadi x');
print -dpng '3.2.b.png';


% Zadatak 3.2.c
m = data4/1000;
DobraKombinacija (m, '3.xlsx', 'Zadatak3.2.cMasa');