model lab03_var1
  Real x;
  Real y;
  Real a = 0.312;
  Real b = 0.456;
  Real c = 0.256;
  Real h = 0.34;
  Real t = time;
initial equation
  x = 44200;
  y = 54100;
equation
  der(x) = -a * x - b * y + sin(t + 3);
  der(y) = -c * x - h * y + cos(t + 7);
end lab03_var1;
