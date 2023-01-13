import 'chapter_5.book.dart';
import 'chapter_5_animal.dart';
import 'chapter_5_cat.dart';
import 'chapter_5_calc.dart';

// класс с приватной переменной _
class CatLocal {
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

void main(List<String> args) {
  String cat = '\u{1F431}';
  // создание экземпляра класса Cat
  var catPhil = Cat()
    ..name = 'Phil'
    ..age = 3
    ..sleepState = false;

  print('$cat This is cat Phil.');
  print(catPhil.name);
  print(catPhil.age);
  print(catPhil.sleepState);
  catPhil.sleep();
  catPhil.wakeUp();
  catPhil.helloMaster();
  catPhil.currentState();
  print('*' * 10);

  // из класса с приватной переменной
  // приватная переменная из файла import
  // не может быть изменена
  var catBars = CatAwake()
    ..name = 'Bars'
    ..age = 5;

  print('$cat This is cat Bars.');
  print(catBars.name);
  print(catBars.age);
  catBars.sleep();
  catBars.wakeUp();
  catBars.helloMaster();
  catBars.currentState();
  print('*' * 10);

  // из локального класса с приватной переменной
  var catMars = CatLocal()
    ..name = 'Mars'
    ..age = 1
    .._sleepState = false;

  print('$cat This is cat Mars.');
  print(catMars.name);
  print(catMars.age);
  print(catMars._sleepState);
  catMars.sleep();
  catMars.wakeUp();
  catMars.helloMaster();
  catMars.currentState();
  print('*' * 10);

  var catLeo = CatAwakeGetSet()
    ..name = 'Leo'
    ..age = 7
    ..setSleepState = true;

  print('$cat This is cat Leo.');
  print(catLeo.name);
  print(catLeo.age);
  print(catLeo.isSleep);
  catLeo.sleep();
  catLeo.wakeUp();
  catLeo.helloMaster();
  catLeo.currentState();
  print('*' * 10);

  var catGarfield = CatKit('Garfield', 5);
  print('$cat This is cat Garfield.');
  print(catGarfield.name);
  print(catGarfield.age);
  print(catGarfield.isSleep);
  catGarfield.sleep();
  catGarfield.wakeUp();
  catGarfield.helloMaster();
  catGarfield.currentState();
  print('*' * 10);

  var catTigger = CatKitPrivate('Tigger', 1, true);
  print('$cat This is cat Tigger.');
  print(catTigger.name);
  print(catTigger.age);
  print(catTigger.isSleep);
  catTigger.sleep();
  catTigger.wakeUp();
  catTigger.helloMaster();
  catTigger.currentState();
  print('*' * 10);

  var catKitty = CatDefault('Kitty');
  print('$cat This is cat Kitty.');
  print(catKitty.name);
  print(catKitty.age);
  print(catKitty.isSleep);
  catKitty.sleep();
  catKitty.wakeUp();
  catKitty.helloMaster();
  catKitty.currentState();
  print('*' * 10);

  var catOreo = CatNeed(name: 'Oreo', sleepState: true);
  print('$cat This is cat Oreo.');
  print(catOreo.name);
  print(catOreo.age);
  print(catOreo.isSleep);
  catOreo.sleep();
  catOreo.wakeUp();
  catOreo.helloMaster();
  catOreo.currentState();
  print('*' * 10);

  var catBella = CatNamed(name: 'Bella', sleepState: false);
  print('$cat This is cat Bella.');
  catNamedProcess(catBella);
  print('*' * 10);

  var catMilo = CatNamed.onlyNmae('Milo');
  print('$cat This is cat Milo.');
  catNamedProcess(catMilo);
  print('*' * 10);

  //var catWillow = CatNamed.nameAndAge('Willow', 11);
  //print('$cat This is cat Willow.');
  //catNamedProcess(catWillow);
  print('*' * 10);

  var catOliver = CatMain(name: 'Oliver', sleepState: true);
  print('$cat This is cat Oliver.');
  catMainProcess(catOliver);
  print('*' * 10);

  var catOscar = CatMain.onlyName('Oscar');
  print('$cat This is cat Oscar.');
  catMainProcess(catOscar);
  print('*' * 10);

  //var catSheba = CatMain.nameAndAge('Sheba', 6);
  //print('$cat This is cat Sheba.');
  //catMainProcess(catSheba);
  //print('*' * 10);

  // catImmutable и catRomeo
  // хранят ссылку на один объект
  var catImmutable = const ImmutableCat('Romeo', 3);
  var catRomeo = const ImmutableCat('Romeo', 3);
  print('$cat This is cat Romeo.');
  print(identical(catImmutable, catRomeo)); // true catImmutable == catRomeo
  print(catRomeo.name);
  print(catRomeo.age);
  catRomeo.helloMaster();
  print('*' * 10);

  var catCasper = const ImmutableCat('Casper', 1);
  print('$cat This is cat Casper.');
  print(identical(catImmutable, catCasper)); // false catImmutable != catCasper
  print(catCasper.name);
  print(catCasper.age);
  catCasper.helloMaster();
  print('*' * 10);

  // создаётся новый экземпляр класса
  var catAsh = ImmutableCat('Ash', 10);
  print('$cat This is cat Ash.');
  print(identical(catImmutable, catAsh)); // false catImmutable != catAsh
  print(catAsh.name);
  print(catAsh.age);
  catAsh.helloMaster();
  print('*' * 10);

  //
  var catSingle = SingleCat('Tom', 7);
  print('$cat This is cat Tom.');
  print('*' * 10);
  var catTommy = SingleCat('Tommy', 5);
  print('$cat This is cat Tommy.');
  print(catTommy.name); // Tom
  print('*' * 10);

  print('*' * 30);
  print('Books Store');
  var book1 = BookStore('Dart Apprentice', 295);
  var book2 = BookStore('Data Structures & Algorithms in Dart', 458);
  var book3 = BookStore('Quick Start Guide to Dart Programming', 233);
  var book4 = BookStore('Dart Apprentice', 295);
  print(identical(book2, book3)); // false
  print(identical(book1, book4)); // true

  print('*' * 10);
  print('Books Pages');
  var bookPage1 = BookPage();
  print(bookPage1.pages);
  BookPage.bookPages = 20;
  var bookPage2 = BookPage();
  print(bookPage2.pages);

  print('*' * 30);
  print('Calculator');
  print(Calc.add(3, 5));
  print(Calc.add(5, 8));
  var calc = Calc();
  print(calc.sum(8, 13));

  print('*' * 30);
  print('Books');
  var book5 = Book('Dart Apprentice', 295);
  var book6 = Book('Data Structures & Algorithms in Dart', 458);
  //var book7 = Book('Quick Start Guide to Dart Programming', 233);
  //var book8 = Book('Dart Apprentice', 295);
  var box = book5 + book6;
  box.printBooks();
  print('*' * 10);
  box + Book('Quick Start Guide to Dart Programming', 233);
  box.printBooks();

  print('*' * 30);
  print('Animals');
  var dogOllie = AnimalDog('Dog', 'Ollie', 3);
  print(dogOllie.view);
  print(dogOllie.name);
  print(dogOllie.age);
  print(dogOllie.animalVoice());
  print(dogOllie.animalCommandVoice());
  print('*' * 10);

  var catMolli = AnimalCat('Cat', 'Molli', 2);
  print(catMolli.view);
  print(catMolli.name);
  print(catMolli.age);
  print(catMolli.animalVoice());
  print(catMolli.animalCommandVoice());

  print('*' * 30);
  print('Animal Abstract');
  var animalLion = AnimalAbstractLion('Felidae', 'Leo', 10);
  print(animalLion.description());
  print('*' * 10);
  var animalBear = AnimalAbstractBear('Ursidae', 'Teddy', 7);
  print(animalBear.description());
  print('*' * 10);
  var animalElk = AnimalAbstractElk('Cervidae', 'Wapiri', 15);
  print(animalElk.description());
  print('*' * 10);
  var animalHare =
      AnimalAbstractDifferent('Leporidae', 'Foofoo', 1, 'Har-har-har-har');
  print(animalHare.description());
  print(animalHare.voiceView());
  print(animalHare.coatColor('White'));
  print('*' * 10);
  var animalFox =
      AnimalAbstractDifferent('Canidae', 'Mia', 11, 'Waa-waa-waa-waa');
  print(animalFox.description());
  print(animalFox.voiceView());
  print(animalFox.coatColor('orange'));
  print('*' * 30);

  print('Birds');
  var birdEagle = BirdBig('Aves', 'Eagle');
  print('${birdEagle.view} -> ${birdEagle.name} -> ${birdEagle.flight(true)}');

  var birdPenguin = BirdBig('Aves', 'Penguin');
  print(
      '${birdPenguin.view} -> ${birdPenguin.name} -> ${birdPenguin.flight(false)}');

  var birdHummingbird = BirdSmall('Aves', 'Hummingbird');
  print(
      '${birdHummingbird.view} -> ${birdHummingbird.name} -> ${birdHummingbird.flight(true)}');
  print('*' * 30);

  print('Generics');
  print(twoLetter('car', 'red'));
  print(twoLetter(1, 2));
  print('*' * 10);
  int plusA = 5;
  double plusB = 1.2;
  print(plus(plusA, plusB));
  print(plus2(plusA, (plusB + 1)));
  print('*' * 30);

  print('Computer');
  var pc1 = Computer(78912);
  var pc2 = Computer('User');
  var pc3 = Computer(1223.4568);
  print(pc1.runtimeType);
  print(pc1.name);
  print(pc2.runtimeType);
  print(pc2.name);
  print(pc3.runtimeType);
  print(pc3.name);
  print('*' * 30);

  print('Enum');
  print(Colors);
  print(colorsList());
  print(ColorsDescription);
  print(ColorsDescription.values);
  print(ColorsDescription.blue);
  print(ColorsDescription.cyan.hue);
  print(ColorsDescription.green.saturation);
  print(ColorsDescription.magenta.value);
  print(ColorsDescription.red.index);
  print(ColorsDescription.yellow.name);
}

void catNamedProcess(CatNamed cat) {
  print(cat.name);
  print(cat.age);
  print(cat.isSleep);
  cat.sleep();
  cat.wakeUp();
  cat.helloMaster();
  cat.currentState();
}

void catMainProcess(CatMain cat) {
  print(cat.name);
  print(cat.age);
  print(cat.isSleep);
  cat.sleep();
  cat.wakeUp();
  cat.helloMaster();
  cat.currentState();
}
