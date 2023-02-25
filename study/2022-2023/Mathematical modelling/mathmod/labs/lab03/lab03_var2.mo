model lab03_var2
  Real x;
  Real y;
  Real a = 0.318;
  Real b = 0.615;
  Real c = 0.312;
  Real h = 0.512;
  Real t = time;
initial equation
  x = 44200;
  y = 54100;
equation
  der(x) = -a * x - b * y + abs(cos(8 * t));
  der(y) = -c * x * y - h * y + abs(sin(6 * t));
end lab03_var2;
