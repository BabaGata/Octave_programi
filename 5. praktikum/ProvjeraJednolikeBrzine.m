function v = ProvjeraJednolikeBrzine(t, s, y, x);
  v = s./t;
  status = xlswrite (y, v, x);
end
