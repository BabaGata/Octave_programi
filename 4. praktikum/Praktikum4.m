clear ; close all; clc
pkg load io;

% Dodavanje puteva di se nalaze funkcije
cd ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\4');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\FunkcijePogreske');
addpath ('C:\Users\Korisnik\Desktop\Faks 3. semestar\Praktikum\Grafovi');

% zadatak 4.1.

a = 2;
h = 4.65;
m1 = 26.7;
m2 = 50;

V = h*(a^2);
Gustoca1 ((m2-m1) , V, '4.xlsx', 'Zadatak4.1.')

% zadatak 4.2.

V = 4.5;
m1 = 10.45;

Gustoca1 (m2-m1, V, '4.xlsx', 'Zadatak4.2.')

% zadatak 4.3. i 4.4.

l0 = 7.7;
l1 = 11.9;
l2 = 11.5;

Gustoca2 (l1, l0, l2, 1, '4.xlsx', 'Zadatak4.3.');
Gustoca2 (l1, l2, l0, 10.5, '4.xlsx', 'Zadatak4.4.');

% zadatak 4.5.

m1 = 12.1;
m2 = 22.25;
m3 = 20.45;

Gustoca3 (m2, m3, m1, '4.xlsx', 'Zadatak4.5.');