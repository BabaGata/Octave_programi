function v = ProvjeraBrzine(t, a, y, x);
  v = a.*t;
  status = xlswrite (y, v, x);
end
