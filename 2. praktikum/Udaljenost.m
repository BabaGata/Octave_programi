function d = Udaljenost (l0, deltal, x, n1, n2, n)
  a = (n1+n2)/(2*n1);
  b = (x*deltal)/n;
  d = l0+(a*b);
end
