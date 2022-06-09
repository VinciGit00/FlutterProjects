import '../Abstract classes/employee.dart';

void main(List<String> args) {
  worker w = new worker("Marco", "Vinciguerra", "Tesla");

  print(w.name + " " + w.surname + " " + w.factory);
}
