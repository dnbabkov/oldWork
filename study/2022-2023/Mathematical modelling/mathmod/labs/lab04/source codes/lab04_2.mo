model lab04_2
  Real x;
  Real y;
initial equation
  x = 1.3;
  y = 0.3;
equation
  der(x) = y;
  der(y) = - 3 * y - 0.3 * x;
end lab04_2;
