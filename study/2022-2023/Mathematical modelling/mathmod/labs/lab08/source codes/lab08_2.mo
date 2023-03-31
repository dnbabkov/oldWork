model lab08_2

  Real M1;
  Real M2;
  Real p_cr = 35;
  Real N = 31;
  Real q = 1;
  Real tau1 = 18;
  Real tau2 = 23;
  Real p1 = 11.5;
  Real p2 = 8.7;
  Real a1 = p_cr / (tau1^2 * p1^2 * N * q);
  Real a2 = p_cr / (tau2^2 * p2^2 * N * q);
  Real b = p_cr / (tau1^2 * p1^2 * tau2^2 * p2^2 * N * q);
  Real c1 = (p_cr - p1) / (tau1 * p1);
  Real c2 = (p_cr - p2) / (tau2 * p2);
  
initial equation
  
  M1 = 6.8;
  M2 = 6;
  
equation

  der(M1) = (M1/c1) - (b/c1 + 0.00067) * M1 * M2 / c1 - (a1/c1^2) * M1^2;
  der(M2) = ((c2 * M2) / c1^2) - (b/c1^2) * M1 * M2 - (a2/c1^2) * M2^2;
  
end lab08_2;
