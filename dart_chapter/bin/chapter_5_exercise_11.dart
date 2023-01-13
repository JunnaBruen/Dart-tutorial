import 'dart:math';

void main(List<String> args) {
  var calc = NumberSystems();
  print(calc.calculator(radixFrom: '10', number: '11001', radixIn: '16'));
}

class NumberSystems {
  String radixFrom = '';
  String number = '';
  String radixIn = '';

  NumberSystems();

  calculator(
      {required String radixFrom,
      required String number,
      required String radixIn}) {
    // алфавит
    String alphabet = '0123456789ABCDEF';
    List<String> alphabetList = [];
    // заполнения листа алфавитом
    for (var i = 0; i < alphabet.length; i++) {
      alphabetList.add(alphabet[i]);
    }

    // перевести строку с список
    List<int> radixOff = [];
    for (var i = 0; i < radixFrom.length; i++) {
      int radix = int.parse(radixFrom[i]);
      radixOff.add(radix);
    }

    List<int> radixOn = [];
    for (var i = 0; i < radixIn.length; i++) {
      int radix = int.parse(radixIn[i]);
      radixOn.add(radix);
    }

    List<int> numberFor = [];
    List numberList = [];
    number = number.toUpperCase();
    // найти индекс этого элемента в списке алфавита
    for (var i = 0; i < number.length; i++) {
      numberList.add(number[i]);
    }
    for (var i = 0; i < numberList.length; i++) {
      for (var j = 0; j < alphabetList.length; j++) {
        if (numberList[i] == alphabetList[j]) {
          var value = numberList[i];
          var result = alphabetList.indexOf(value);
          numberFor.add(result);
        }
      }
    }
    int numberSum = 0;
    for (var i = 0; i < numberFor.length; i++) {
      numberSum += numberFor[i];
    }

    // перевод строк в число
    int radixFromInt = int.parse(radixFrom);
    int radixInInt = int.parse(radixIn);

    // условия проверки значений
    if (radixFromInt < 2 ||
        radixInInt < 2 ||
        radixFromInt > alphabetList.length ||
        radixInInt > alphabetList.length ||
        numberSum < 0) {
      return 'Check entered values';
    }

    // заполнения листа алфавитом
    List<String> alphabetListRadixOff = [];
    List<String> alphabetListRadixOn = [];
    for (var i = 0; i < radixFromInt; i++) {
      alphabetListRadixOff.add(alphabet[i]);
    }
    for (var i = 0; i < radixInInt; i++) {
      alphabetListRadixOn.add(alphabet[i]);
    }
    print(numberFor);

    // сравненеи введенных знаков с допустимыми
    for (var i = 0; i < numberList.length; i++) {
      if (alphabetListRadixOff.contains(numberList[i]) == false) {
        return 'Check entered values';
      }
    }

    // массивы
    Map<int, int> numberMap = {};
    Map<int, int> radixOffMap = {};
    for (var i = 0; i < numberFor.length; i++) {
      numberMap.putIfAbsent(i, () => numberFor[i]);
    }
    for (var i = 0; i < radixOff.length; i++) {
      radixOffMap.putIfAbsent(i, () => radixOff[i]);
    }

    // количество символов в числе входа в обратном порядке
    List<dynamic> radixOffPowList = [];
    for (var i = number.length; i > 0; i--) {
      int numberIndex = i - 1;

      // система счисления входа в степени
      num radixOffPow;
      radixOffPow = pow(radixFromInt, numberIndex);
      radixOffPowList.add(radixOffPow);
    }
    // массив из списка для цифр в степени
    Map<int, int> radixOffPowMap = {};
    for (var i = 0; i < radixOffPowList.length; i++) {
      radixOffPowMap.putIfAbsent(i, () => radixOffPowList[i]);
    }

    // // перемножение по ключу
    List<int> totalList = [];
    for (var i = 0; i < numberFor.length; i++) {
      for (var j = 0; j < radixOffPowMap.length; j++) {
        if (i == j) {
          var valueI = numberMap[i];
          var valueJ = radixOffPowMap[j];
          var result = valueI! * valueJ!;
          totalList.add(result);
        }
      }
    }

    // сложение значений листа
    int totalInt = 0;
    for (var i = 0; i < totalList.length; i++) {
      totalInt = totalInt + (totalList[i]);
    }

    // из 10 в другую
    // переменные для кода
    int remainder; //остаток от деления
    List<dynamic> resultList = []; // результат
    String resultStr = '';

    // калькулятор
    while (totalInt > 0) {
      // remainder - это оператор Dart, выыодит остток от деления
      // работает с числом, например: 5.remainder(3)
      remainder = totalInt.remainder(radixInInt);
      resultList.insert(0, remainder);
      totalInt = ((totalInt - remainder) ~/ radixInInt);
    }

    // перевод чисел в буквы
    // необходимо для чисел больше 9
    for (var i = 0; i < resultList.length; i++) {
      resultStr = '$resultStr${alphabetList[resultList[i]]}';
    }

    return resultStr;
  }
}
