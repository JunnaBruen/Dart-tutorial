void main(List<String> args) {
  var input = 0;
  var result = 0;
  var scaling = 100;

  print('перехват всех исключений');
  try {
    result = scaling ~/ input;
  } catch (e) {
    // перехват всех исключений
    print('A division by zero has occurred!!!');
    print(e);
  }

  print('перехват специализированного исключения');
  try {
    result = scaling ~/ input;
  } on IntegerDivisionByZeroException {
    // перехват специализированного исключения
    // название получено в предыдущем try
    print('A division by zero has occurred!!!');
  }

  print('перехватывает все исключения и все ошибки');
  try {
    result = scaling ~/ input;
  } on Exception catch (e) {
    // перехватывает все исключения
    print('Thrown exception: $e');
  } catch (e) {
    // перехватывает все исключения и все ошибки
    print('Something out of the ordinary: $e');
  }

  print('код выполняется в любом случае');
  try {
    result = scaling ~/ input;
  } on IntegerDivisionByZeroException {
    // перехват специализированного исключения
    print('A division by zero has occurred!!!');
  } finally {
    // код выполняется в любом случае
    print('Whatever happens, I\'m great!!!');
  }

  print('если исключение не указано');
  print('***код закомментирован***');
  // если исключение не указано,
  // то ошибка появится после выполнения блока finally
  // try {
  //   result = scaling ~/ input;
  // } finally {
  //   print('Whatever happens, I\'m great!!!');
  // }

  // генерация исключений и ошибок
  print('throw');
  print('вывод on IntegerDivisionByZeroException');
  // вывод on IntegerDivisionByZeroException
  try {
    if (input == 0) {
      throw IntegerDivisionByZeroException();
    }
    result = scaling ~/ input;
  } on IntegerDivisionByZeroException {
    print('A division by zero has occurred!!!');
  } catch (e) {
    print('Error: $e');
  }

  print('вывод catch');
  // вывод catch
  try {
    if (input == 0) {
      throw ArgumentError();
    }
    result = scaling ~/ input;
  } on IntegerDivisionByZeroException {
    print('A division by zero has occurred!!!');
  } catch (e) {
    print('Error: $e');
  }

  // выводит исключение
  // после выбрасывает ошибку
  print('rethrow');
  print('***код закомментирован***');
  // try {
  //   result = scaling ~/ input;
  // } on IntegerDivisionByZeroException {
  //   print('A division by zero has occurred!!!');
  //   rethrow;
  // } on ArgumentError catch (e) {
  //   print('Error: $e');
  // }

  // перехват и обработка ошибок и исклюений по типу
  print('перехват и обработка ошибок и исклюений по типу');
  try {
    if (input == 0) {
      throw ArgumentError();
    }
  } on ArgumentError catch (e) {
    print('Error: $e');
  }

  print('генерация ошибок через методы класса');
  var box = Box(8);
  StorageSystem storageSystem = box;
  storageSystem.addItem(Item('Book', 3.2));
  storageSystem.addItem(Item('Pencil', 1.0));
  storageSystem.addItem(Item('Ruler', 1.7));
  print(storageSystem.systemWeight());
  storageSystem.addItem(Item('Notebook', 2.5));
  print(storageSystem.systemWeight());
  storageSystem.popItem();
  print(storageSystem.systemWeight());

  // экземпляр объекта создан от StorageSystem
  // в котором методы выводят ошибку
  // блокируя создание экземпляра объекта
  print('***код закомментирован***');
  // StorageSystem newStorageSystem = StorageSystem(20);
  // newStorageSystem.addItem(Item('Monitor', 1));

  print('пользовательские исключения');
  try {
    throw MyException('Custom Exception.');
  } on MyException catch (e) {
    print(e);
  }

  print('трассировка стека');
  try {
    myFunction();
  } on MyException catch (e, s) {
    print(e);
    print(s);
  }

  print('утверждение');
  print('***код закомментирован***');
  // print(numFunction(6, 0));
  print('***код закомментирован***');
  // print(numFunc(6, 0));
}

// генерация ошибок через методы класса
class Item {
  final String name;
  final double weight;

  Item(this.name, this.weight);
}

class StorageSystem {
  List<Item> itemsList = [];
  final double weightLimit;

  StorageSystem(this.weightLimit);

  addItem(Item item) {
    throw NoSuchMethodError;
  }

  Item popItem() {
    throw NoSuchMethodError;
  }

  double systemWeight() {
    throw NoSuchMethodError;
  }
}

class Box extends StorageSystem {
  Box(super.weightLimit);

  @override
  addItem(Item item) {
    var currentSystemWeight = systemWeight();
    if ((currentSystemWeight + item.weight) < weightLimit) {
      itemsList.add(item);
      print('${item.name} added to box.');
    } else {
      print('The ${item.name} does not fit in the box!');
    }
  }

  @override
  Item popItem() {
    return itemsList.removeLast();
  }

  @override
  double systemWeight() {
    double sum = 0.0;
    for (var element in itemsList) {
      sum += element.weight;
    }
    return sum;
  }
}

// пользовательские исключения
// интерфейс базового класса Exception
class MyException implements Exception {
  // ?
  final String? message;

  MyException([this.message]);

  @override
  String toString() {
    // ?? - это 'или'
    return message ?? 'MyException';
  }
}

// трассировка стека
myFunction() {
  throw MyException('Custom Exception.');
}

// утверждение
// вывод ошибки
int numFunction(int a, int b) {
  assert(b != 0);
  return a ~/ b;
}

int numFunc(int a, int b) {
  // вывод ошибки и текста
  assert(b != 0, 'Division by zero');
  return a ~/ b;
}
