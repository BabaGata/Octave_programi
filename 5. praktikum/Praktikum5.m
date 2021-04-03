clear ; close all; clc
pkg load io;

% Dodavanje puteva di se nalaze funkcije
cd ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\5');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\FunkcijePogreske');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\Grafovi');

% Ucitavanje podataka mjerenja
data1 = load('5.1.a.txt');
data2 = load('5.1.b.txt');
data3 = load('5.2.txt');



% zadatak 5.1.
DobraKombinacija(data1, '5.xlsx', 'Zadatak5.1.a')

t = AbsolutnaVrijednost(data1);
a = Akceleracija (1, t);
SE = (-4/(t^3))*StandardnaDevijacijaAritmetickeSredine(data1);
status = xlswrite ('5.xlsx', a, 'Zadatak5.1.b.', 'A1');
status = xlswrite ('5.xlsx', SE, 'Zadatak5.1.b.', 'B1');

s2 = data2(1,1);
s3 = data2(2,1);
s4 = data2(3,1);
s1 = AbsolutnaVrijednost(a)/2;
deltas = [s1; s2-s1; s3-s2; s4-s3];
omjeri = deltas./s1;
status = xlswrite ('5.xlsx', omjeri, 'Zadatak5.1.b.omjeri', 'A1:A6');
status = xlswrite ('5.xlsx', deltas, 'Zadatak5.1.b.omjeri', 'B1:B6');

% Zdatak 5.2.

s = 0.5;
t1 = data3(:,1);
t2 = data3(:,2);
t3 = data3(:,3);

T1 = 5;
T2 = 3;
T3 = 4;

DobraKombinacija(t1, '5.xlsx', 'zadatak2.1');
DobraKombinacija(t2, '5.xlsx', 'zadatak2.2');
DobraKombinacija(t3, '5.xlsx', 'zadatak2.3');

v1 = ProvjeraBrzine([5; 3; 4], a, '5.xlsx', 'zadatak5.2.PrvaBrzina');
AritmT = AbsolutnaVrijednost(data3);
v2 = ProvjeraJednolikeBrzine(AritmT, s, '5.xlsx', 'zadatak5.2.DrugaBrzina');

SEtime = StandardnaDevijacijaAritmetickeSredine(data3);
SEbrzina = SEuzPomocDerivacije (s, AritmT, SEtime, '5.xlsx', 'zadatak5.2.b');

T = Tocnost (v1, (v2'));
status = xlswrite ('5.xlsx', T, 'Zadatak5.2.Tocnost');