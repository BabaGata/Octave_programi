function Gustoca2 (a, b, c, d, y, z)
  ro = ((a-b)*d)/(a-c);
  
  status = xlswrite (y, ro, z, 'A2');
  status = xlswrite (y, 'Gustoca:', z, 'A1');
end
