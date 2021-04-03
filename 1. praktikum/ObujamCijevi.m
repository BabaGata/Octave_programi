function V = ObujamCijevi (r1, r2, h)
  B1 = (r1.^2).*pi;
  B2 = (r2.^2).*pi;
  a = B1.*h;
  b = B2.*h;
  V = abs(B1-B2);
end
