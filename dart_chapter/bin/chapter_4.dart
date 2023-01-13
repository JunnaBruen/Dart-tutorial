//import 'src/calculator.dart' hide sub;
import 'src/calculator.dart' show add, mul;
import 'src/calculator.dart' deferred as calculator hide sub;
import 'src/calc_error.dart' as calcError;

void main(List<String> args) {
  print('Import calculator from folder bin/src');
  print(calcError.add(2.0, 2.0));
  print(calcError.sub(2.0, 3.5));
  print(add(2.0, 2.0));
  //print(sub(2.0, 3.5));
  //print(div(2.0, 4.5));
  print(mul(2.5, 5.0));
  //print(pow2(3.0));
  //print(powN(4.0, 2.2));
  callLibrary(9, 3.0);
}

Future callLibrary(double a, double b) async {
  await calculator.loadLibrary();
  print(calculator.div(a, b));
}
