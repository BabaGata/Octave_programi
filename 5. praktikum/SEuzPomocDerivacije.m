function SE = SEuzPomocDerivacije (s, t, se, y, x)
  a = se.*s;
  b = a./(t.^2);
  SE = abs(b);
  
  status = xlswrite (y, SE, x);
end
