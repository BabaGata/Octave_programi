function R = PolumjerZakrivljenosti (a, h)
  b = 3.*(h.^2);
  c = (a^2).+b;
  R = c./(6.*h);
end
