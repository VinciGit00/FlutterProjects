import 'Employee.dart';
import 'SpecializedEmployee.dart';

void main(List<String> args) {
  Employee e = new Employee.secondConstructor("Marco", "Vinciguerra", 12);
  print(e.getName() + " " + e.getSurname() + " " + e.age.toString());

  e.ChangeName("Franco");
  print(e.getName() + " " + e.getSurname() + " " + e.age.toString());

  e.changeSurname("Ranghetti");
  print(e.getName() + " " + e.getSurname() + " " + e.age.toString());

  e.changeNameAndSurname("Claudia", "Avizzano");
  print(e.getName() + " " + e.getSurname() + " " + e.age.toString());

  SpecializedEmployee SE = new SpecializedEmployee("name", "surname");

  SE.ChangeName("Franco");
  print(SE.getName() + " " + SE.getSurname() + " " + SE.age.toString());

  SE.changeSurname("Ranghetti");
  print(SE.getName() + " " + SE.getSurname() + " " + SE.age.toString());

  SE.changeNameAndSurname("Claudia", "Avizzano");
  print(e.getName() + " " + SE.getSurname() + " " + SE.age.toString());
}
