// ОБЪЯВЛЕНИЕ КЛАССА
class Cat {
  late final String name;
  int age = 0;
  bool sleepState = true;

  // состояние сна
  void sleep() {
    if (sleepState) {
      sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  // состояние пробуждения
  void wakeUp() {
    if (!sleepState) {
      sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  // приветствие человека
  void helloMaster() {
    if (!sleepState) {
      sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  // текущее состояние
  void currentState() {
    if (sleepState) {
      sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// класс с приватной переменной _
class CatAwake {
  late final String name;
  int age = 0;
  // _ объявление приватной переменной
  bool _sleepState = true;

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// класс с приватной переменной _
// геттер и сеттер
// для установки и чтения приватной переменной
class CatAwakeGetSet {
  late final String name;
  int age = 0;
  // _ объявление приватной переменной
  bool _sleepState = false;

  // get функция объявляется без () после имени
  // т.е. без параментров
  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// ОБЪЯВЛЕНИЕ КОНСТРУКТОРА КЛАССА
// позиционные аргументы
class CatKitPrivate {
  // свойства
  late final String name;
  int age = 0;
  bool _sleepState = false;

  // конструктор
  CatKitPrivate(this.name, this.age, this._sleepState);

  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

 // методы - это функции
  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// объявление конструктора класса
// позиционные аргументы
// инициализация приватной переменной
class CatKit {
  late final String name;
  int age = 0;
  // _ объявление приватной переменной
  bool _sleepState = true;

  CatKit(this.name, this.age);
  /*
  CatKit(String name, int age) {
    this.name = name;
    this.age = age;
  }
  CatKit(String n, int a) {
    name = n;
    age = a;
  }
  */

  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// позиционные аргументы
// значение по умолчанию (указываются в конце)
class CatDefault {
  late final String name;
  int age = 0;
  bool _sleepState = false;

  CatDefault(this.name, [this.age = 0, this._sleepState = true]);

  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// именованные аргументы
class CatNeed {
  late final String name;
  int age = 0;
  bool _sleepState = false;

  CatNeed({required this.name, this.age = 0, required bool sleepState}) {
    _sleepState = sleepState;
  }

  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// именованный конструктор
class CatNamed {
  late final String name;
  int age = 0;
  bool _sleepState = false;

  CatNamed({required this.name, this.age = 0, required bool sleepState}) {
    _sleepState = sleepState;
  }

  CatNamed.onlyNmae(this.name);

  CatNamed.nameAndAge(this.name, this.age) {
    name = name;
    age = age;
  }

  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// вызов основного конструктора класса
class CatMain {
  late final String name;
  int age = 0;
  bool _sleepState = false;

  CatMain({required this.name, this.age = 0, required bool sleepState}) {
    _sleepState = sleepState;
  }

  //CatMain.onlyName(String nameCatMain) :this(name: nameCatMain, sleepState: true);
  CatMain.onlyName(String nameCatMain) {
    name = nameCatMain;
    _sleepState = true;
  }

  CatMain.nameAndAge(String name, int age) {
    name = name;
    age = age;
    _sleepState = true;
  }

  bool get isSleep {
    return _sleepState;
  }

  set setSleepState(bool value) {
    _sleepState = value;
  }

  void sleep() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat falls asleep: Hr-r-r-r-r...');
    } else {
      print('Dream within a dream... mmm...');
    }
  }

  void wakeUp() {
    if (!_sleepState) {
      _sleepState = false;
      print('Stretching lazily, he opens his eyes...');
    } else {
      print('Hr-r-r-r-r...');
    }
  }

  void helloMaster() {
    if (!_sleepState) {
      _sleepState = false;
      print('Me-I-I-I!!!');
    } else {
      print('Hr... Hr-r-r-r-r...');
    }
  }

  void currentState() {
    if (_sleepState) {
      _sleepState = true;
      print('The cat is sleeping.');
    } else {
      print('The cat is awake.');
    }
  }
}

// const конструктор
// значения объектов и переменных класса не меняются
class ImmutableCat {
  final String name;
  final int age;

  const ImmutableCat(this.name, this.age);

  void helloMaster() {
    print('Me-I-I-I!!!');
  }
}

// factory конструктор
class SingleCat {
  String _name;
  int age;
  static SingleCat _singleCat = SingleCat.name('', 0);
  SingleCat.name(this._name, this.age);

  factory SingleCat(String name, int age) {
    if (_singleCat._name == '') {
      _singleCat = SingleCat.name(name, age);
      print('Create an instance of the cat class.');
    } else {
      print('An instance of the cat class was created earlier.');
    }
    return _singleCat;
  }

  String get name {
    return _name;
  }
}
