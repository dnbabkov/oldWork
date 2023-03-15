model lab06_1
  Real N = 15089;
  Real S;
  Real I;
  Real R;
  Real beta = 0.24;
  Real alpha = 0.59;

initial equation
  I = 95;
  R = 45;
  S = N - I - R;

equation
  der(S) = 0;
  der(I) = - beta * I;
  der(R) = beta * I;

end lab06_1;
