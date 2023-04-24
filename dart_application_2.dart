import 'dart:io';

/* 
/// Задание 1 

void main(List<String> args) {
  Tuz tuz = Tuz('black', 'kresti');
  King king = King('black', 'kresti');
  Dama dama = Dama('black', 'kresti');
  Valet valet = Valet('black', 'kresti');

  print(tuz.color);
}

class Card {
  String color;
  String mast;

  Card(this.color, this.mast);
}

class Tuz extends Card {
  Tuz(super.color, super.mast);
}

class King extends Card {
  King(super.color, super.mast);
}

class Dama extends Card {
  Dama(super.color, super.mast);
}

class Valet extends Card {
  Valet(super.color, super.mast);
}
*/

/*
/// Задача 2
void main(List<String> args) {
  Son son = Son("grey", "brown", "left", "slavic");
}

class Father {
  String hairColor = 'brown';
  String handed = 'righ';
  String eyeColor = 'grey';
  String race = 'asian';

  Father(this.eyeColor, this.hairColor, this.handed, this.race);
}

class Son extends Father {
  Son(super.eyeColor, super.hairColor, super.handed, super.race);
}
*/

/* 
/// Задание 3
void main(List<String> args) {
  FirstGen first = FirstGen();
  SecondGen second = SecondGen();
  ThirdGen third = ThirdGen();

  first.getInfo();
  second.getInfo();
  third.getInfo();
}

class Toyota {
  String engine;
  String bodyMetal;
  String bottom;
  String headlamp;

  void getInfo() {
    print('$bodyMetal, $bottom, $engine, $headlamp');
  }

  Toyota(this.bodyMetal, this.bottom, this.engine, this.headlamp);
}

class FirstGen extends Toyota {
  FirstGen() : super('JZ', 'iron', 'regular', 'xsenon');
}

class SecondGen extends Toyota {
  SecondGen() : super('GR', 'pnevma', 'regular', 'xsenon');
}

class ThirdGen extends Toyota {
  ThirdGen() : super('JZ', 'pevma', 'substitute metal', 'lasers');
}

*/

import 'dart:io';

void main(List<String> args) {
  List<Person> people = [];

  for (int i = 0; i < 3; i++) {
    String? name = stdin.readLineSync();
    if (i == 0) {
      people.add(Teacher(name ?? ''));
    } else {
      people.add(Student(name ?? ''));
    }
  }

  for (int i = 0; i < 3; i++) {
    Person person = people[i];
    if (person is Teacher) {
      person.teach();
    } else if (person is Student) {
      person.study();
    }
  }
}

abstract class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  Student(super.name);

  void study() {
    print('$name is studying');
  }
}

class Teacher extends Person {
  Teacher(super.name);

  void teach() {
    print('$name is teaching');
  }
}
