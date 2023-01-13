import 'dart:math';

// приватное объявление функции
// не импортируется
double add(double a, double b) {
  return _add(a, b);
}

double sub(double a, double b) {
  return a - b;
}

double div(double a, double b) {
  return a / b;
}

double mul(double a, double b) {
  return a * b;
}

double pow2(double a) {
  return a * a;
}

double powN(double a, double n) {
  return pow(a, n).toDouble();
}

double _add(double a, double b) {
  return (a + b) * 10;
}