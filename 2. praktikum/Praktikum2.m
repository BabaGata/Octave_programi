clear ; close all; clc
pkg load io;

% Dodavanje puteva di se nalaze funkcije
cd ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\2');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\FunkcijePogreske');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\Grafovi');

% Ucitavanje podataka mjerenja
data1 = load('2.3.a.txt');
data2 = load('2.3.c.txt');


% zadatak 2.1.

d10 = 0.795/1000;
dcrtano = 0.460/1000;
x = 22;
n = 42;

d = Debljina(x, n, d10);
T = Tocnost (dcrtano, d);
status = xlswrite ('2.xlsx', 'Debljina:', '2.1.', 'A1');
status = xlswrite ('2.xlsx', d, '2.1.', 'A2');
status = xlswrite ('2.xlsx', 'Tocnost:', '2.1.', 'A3');
status = xlswrite ('2.xlsx', T, '2.1.', 'A4');

% zadatak 2.2.

l0 = 140/100;
deltal = 150/100;
n1 = 32;
n2 = 41;
x1 = 15;
x2 = 34;

d1 = Udaljenost (l0, deltal, x1, n1, n2, n1);
d2 = Udaljenost (l0, deltal, x2, n1, n2, n2)+deltal;

status = xlswrite ('2.xlsx', 'd1:', '2.2.', 'A1');
status = xlswrite ('2.xlsx', d1, '2.2.', 'A2');
status = xlswrite ('2.xlsx', 'd2:', '2.2.', 'A3');
status = xlswrite ('2.xlsx', d2, '2.2.', 'A4');


% zadatak 2.3.

na = 323;
nb = 109;
N0 = 5;
d = 5.50/1000;

n1 = data1(:, 1);
n2 = data1(:, 2);
N = data1(:, 3);

a = AbsolutnaVrijednost(data2./100);
alfa0  = KutAlfa (na, nb, N0);
alfa  = KutAlfa (n1, n2, N);
h = Visina (alfa, alfa0, d);
R = PolumjerZakrivljenosti (a, h);

DobraKombinacija(alfa, '2.xlsx', '2.3.alfa');
DobraKombinacija(data2, '2.xlsx', '2.3.astranica');
DobraKombinacija(h, '2.xlsx',  '2.3.visinah');
DobraKombinacija(R, '2.xlsx', '2.3');
status = xlswrite ('2.xlsx', 'alfa0:', '2.3.a', 'A1');
status = xlswrite ('2.xlsx', alfa0, '2.3.a', 'A2');
status = xlswrite ('2.xlsx', 'd/a0', '2.3.a', 'A3');
status = xlswrite ('2.xlsx', (d/alfa0)*1000, '2.3.a', 'A4');
status = xlswrite ('2.xlsx', 'h', '2.3.a', 'A5');
status = xlswrite ('2.xlsx', Visina(AbsolutnaVrijednost(alfa),alfa0,d), '2.3.a', 'A6');