model lab07_2
  
  Real N = 1670;
  Real x;
  Real alpha1 = 0.0000132;
  Real alpha2 =  0.32;
  
  Real maxDiff = 0;
  Real maxDiffTime = 0;

initial equation
  
  x = 12;

equation

  der(x) = (alpha1 + alpha2 * x) * (N - x);
  
  if der(x) > maxDiff then
    maxDiff = der(x);
    maxDiffTime = time;
  end if;
  
end lab07_2;
