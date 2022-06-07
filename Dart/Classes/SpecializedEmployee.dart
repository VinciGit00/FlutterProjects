import 'Employee.dart';

class SpecializedEmployee extends Employee {
  //Constructor-> now I invoke the superclass
  SpecializedEmployee(String name, String surname) : super(name, surname);
}
