void main(List<String> args) {
  print('Exerises #1');
  String excerpt =
      'Minä olen Junna. Minä olen 35 vuotta. Asun Pietarissa. Minä opiskelen suomea. Minulla on pari kavanaa YouTubessa. Myös opiskelen ohjelmointia.';
  var presenceExcerpt = PresenceWord(excerpt);
  print(presenceExcerpt.splitSring('Minä'));
  print('*' * 40);

  print('Exerises #2');
  var operationValue = OperationZero();
  print(operationValue.uniOperation(4, 0));
  print('*' * 40);
}

// 1
class PresenceWord {
  String text;

  PresenceWord(this.text);

  splitSring(String word) {
    // регулярное выражение
    RegExp exp = RegExp(r'[^\w\A-Öa-ö0-9]+');

    // регулярное выражение, пробел между словами
    String resultReg = text.replaceAll(exp, ' ');
    // print(resultReg);

    List<String> words = [];
    // деление строки на слова и добавление в список
    // если без пробела, то будет список символов
    words = resultReg.split(' ');
    // print(words);

    int count = 0;
    if (words.contains(word)) {
      for (var element in words) {
        if (element == word) {
          count++;
        }
      }
      return 'The \'$word\' is in the text $count.';
    } else {
      return 'The \'$word\' is not the text.';
    }
  }
}

// 2
// деление на 0
class OperationZero {
  OperationZero();

  uniOperation(num a, num b) {
    var result;
    try {
      result = a ~/ b;
      return result;
    } catch (e) {
      // перехват всех исключений
      return e;
    }
  }
}

// 3