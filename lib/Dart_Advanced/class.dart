// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_basic/Dart_Advanced/mixin.dart';

class Person {
  final String name;
  final String surname;

  Person(this.name, this.surname);

  @override
  String toString() => 'Person(name: $name, surname: $surname)';

  // Factory Constractor
  factory Person.admin(bool isAdmin) {
    return isAdmin ? Admin(1, 'Miftakun', 'Niam') : Person('Niam', 'Miftakun');
  }

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.surname == surname;
  }

  @override
  int get hashCode => name.hashCode ^ surname.hashCode;
}

void main(List<String> args) {
  Person namaKu = Person.admin(true);
  Person namaKu2 = Person.admin(true);

  print(namaKu == namaKu2);
}
