model lab05
  Real x;
  Real y;
initial equation
  x = 7;
  y = 29;
equation
  der(x) = -0.81 * x + 0.048 * x * y;
  der(y) = 0.76 * y - 0.038 * x * y;
end lab05;
