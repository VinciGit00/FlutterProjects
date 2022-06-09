import 'person.dart';

class worker extends Person {
  late String factory;

  worker(String name, String surname, this.factory) : super(name, surname);
}
