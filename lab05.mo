model lab05
  parameter Real a=-0.26; // коэффициент, описывающий   скорость естественного прироста числа жертв в отсутствие хищников
  parameter Real b=-0.027; // уменьшение популяции жертв в каждом акте
  parameter Real c=-0.28; // естественное вымирание хищников, лишенных пищи в виде жертв
  parameter Real d=-0.031; // увеличению популяции хищников в каждом акте
  parameter Real x0=6;
  parameter Real y0=12;
  Real x(start=x0); // число жертв
  Real y(start=y0); // число хищников
equation
  der(x) = a*x - b*x*y;
  der(y) = -c*y + d*x*y;
end lab05;
