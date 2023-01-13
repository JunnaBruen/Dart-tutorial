// вычисление максимального из трех чисел,
// расчет суммы
// произведения элементов списка

dynamic numMax(double a, double b, double c) {
  if (a > b && a > c) {
    return 'Value $a: a max!';
  } else if (b > a && b > c) {
    return 'Value $b: b max!';
  } else if (c > a && c > b) {
    return 'Value $c: c max!';
  }
}

double numSum(double a, double b, double c) {
  var sum = double.parse((a + b + c).toStringAsFixed(2));
  return sum;
}

double numMul(double a, double b, double c) {
  var sum = double.parse((a * b * c).toStringAsFixed(2));
  return sum;
}
