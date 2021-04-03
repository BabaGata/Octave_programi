function Gustoca3 (a, b, c, y, z)
  ro = (b-c)/(a-c);
  
  status = xlswrite (y, ro, z, 'A2');
  status = xlswrite (y, 'Gustoca:', z, 'A1');
  end