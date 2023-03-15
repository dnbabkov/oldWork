model lab06_2

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
  der(S) = - alpha * S;
  der(I) = alpha * S - beta * I;
  der(R) = beta * I;

end lab06_2;
