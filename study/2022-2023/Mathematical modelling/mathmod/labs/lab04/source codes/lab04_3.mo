model lab04_3
  Real x;
  Real y;
initial equation
  x = 1.3;
  y = 0.3;
equation
  der(x) = y;
  der(y) = - 3.3 * y - 3 * x + 3.3 * sin(3 * time);
end lab04_3;
