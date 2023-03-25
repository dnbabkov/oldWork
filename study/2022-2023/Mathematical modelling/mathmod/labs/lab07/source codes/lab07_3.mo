model lab07_3
  
  Real N = 1670;
  Real x;
  Real alpha1 = 0.8;
  Real alpha2 = 0.15;

initial equation
  
  x = 12;

equation

  der(x) = (alpha1 * time + alpha2 * sin(time) * x) * (N - x);
  
end lab07_3;
