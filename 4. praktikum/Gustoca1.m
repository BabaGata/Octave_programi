function Gustoca1 (m, V, y, z)
  ro = m/V;
  status = xlswrite (y, ro, z, 'A2');
  status = xlswrite (y, 'Gustoca:', z, 'A1');
end
