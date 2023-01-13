// наследование и переопределение метода
class Animal {
  final String view;
  final String name;
  int age;

  Animal(this.view, this.name, this.age);

  animalVoice() {
    var voice = 'WOF WOF';
    return voice;
  }

  animalCommandVoice() {
    var commandVoice = '';
    if (view == 'Dog') {
      commandVoice = 'WOF WOF WOF WOF';
      return commandVoice;
    } else if (view == 'Cat') {
      commandVoice = 'Meow Meow Meow Meow';
      return commandVoice;
    }
  }
}

class AnimalDog extends Animal {
  AnimalDog(super.view, super.name, super.age);
}

class AnimalCat extends Animal {
  AnimalCat(super.view, super.name, super.age);

  @override
  animalVoice() {
    var voice = 'Meow';
    return voice;
  }
}

// абстрактный класс
abstract class AnimalAbstract {
  final String view;
  final String name;
  int age;
  String get voice;

  AnimalAbstract(this.view, this.name, this.age);

  description() {
    return '$name is a ${view.toLowerCase()} at the age of $age. Greeting $name: $voice.';
  }
}

// наследование от абстрактного класса
// только от одного класса
class AnimalAbstractLion extends AnimalAbstract {
  AnimalAbstractLion(super.view, super.name, super.age);

  // переопределение
  @override
  final String voice = 'R-r-r-r-r';
}

class AnimalAbstractBear extends AnimalAbstract {
  AnimalAbstractBear(super.view, super.name, super.age);

  @override
  final String voice = 'Fyy-r-r-r';
}

// реализация интерфейса абстрактного класса
class AnimalAbstractElk implements AnimalAbstract {
  @override
  final String view;
  @override
  final String name;
  @override
  int age;

  AnimalAbstractElk(this.view, this.name, this.age);

  @override
  description() {
    return '$name is a ${view.toLowerCase()} at the age of $age. Greeting $name: $voice.';
  }

  @override
  final String voice = 'U-u-u-u-u-u';
}

// может быть реализовано от нескольких
abstract class AnimalDescription {
  final String view;
  final String name;
  int age;

  AnimalDescription(this.view, this.name, this.age);

  description() {
    return '$name is a ${view.toLowerCase()} at the age of $age.';
  }
}

abstract class AnimalVoice {
  String get voice;

  voiceView() {
    return 'Greeting: $voice.';
  }
}

class AnimalAbstractDifferent implements AnimalDescription, AnimalVoice {
  @override
  final String view;
  @override
  final String name;
  @override
  int age;

  AnimalAbstractDifferent(this.view, this.name, this.age, this.voice);

  @override
  description() {
    return '$name is a ${view.toLowerCase()} at the age of $age.';
  }

  @override
  voiceView() {
    return 'Greeting: $voice.';
  }

  @override
  String voice;
}

// расширение существующего класса
extension Color on AnimalDescription {
  coatColor(String color) {
    return 'Coat color ${color.toLowerCase()}.';
  }
}

// примеси
mixin Flight {
  flight(bool flight) {
    if (flight == true) {
      return 'This bird is flying.';
    } else if (flight == false) {
      return 'This bird doesn\'t fly?!';
    }
  }
}

abstract class Bird {
  String view;
  String name;

  Bird(this.view, this.name);
}

// 1 - mixin, 2 - implements
class BirdBig with Flight implements Bird {
  @override
  String view;
  @override
  String name;

  BirdBig(this.view, this.name);
}

// 1 - extends, 2 - mixin
class BirdSmall extends Bird with Flight {
  BirdSmall(super.view, super.name);
}

// generics <T>: T - type
// обобщения
twoLetter<T>(T first, T second) {
  return '$first $second';
}

plus<T extends num>(T a, T b) {
  return a + b;
}

plus2(num a, num b) {
  return a + b;
}

class Computer<T> {
  T name;

  Computer(this.name);
}

// enum
// перечисления
// редактируется только в коде!
enum Colors { blue, red, green }

List<String> colorsList() {
  List<String> colors = [];

  for (var i = 0; i < Colors.values.length; i++) {
    colors.add(Colors.values[i].name);
  }

  return colors;
}

enum ColorsDescription {
  magenta(300, 100, 100),
  red(0, 100, 100),
  yellow(60, 100, 100),
  green(120, 100, 100),
  cyan(180, 100, 100),
  blue(240, 100, 100);

  final int hue;
  final int saturation;
  final int value;

  const ColorsDescription(this.hue, this.saturation, this.value);
}
