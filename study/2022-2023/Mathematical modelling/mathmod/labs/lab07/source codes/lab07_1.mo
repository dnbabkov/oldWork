model lab07_1
  
  
Real N = 1670;
  Real x;
  Real alpha1 = 0.113;
  Real alpha2 = 0.000033;
initial equation
  
  x = 12;

equation

  der(x) = (alpha1 + alpha2 * x) * (N - x);

end lab07_1;
