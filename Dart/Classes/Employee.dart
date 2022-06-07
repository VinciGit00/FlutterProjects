class Employee {
  late String _name;
  late String _surname;
  late int age;

  // First constructor
  Employee(String name, String surname) {
    this._name = name;
    this._surname = surname;
    //default age
    this.age = 20;
  }

  //Second constructor
  Employee.secondConstructor(String name, String surname, int age) {
    this._name = name;
    this._surname = surname;
    this.age = age;
  }

  //Third constructor
  Employee.thirdConstructor(String surname) {
    this._name = "no name";
    this._surname = surname;
    //default age
    this.age = 20;
  }

  Employee.zeroConstructor() {}

  String getName() {
    return this._name;
  }

  String getSurname() {
    return this._surname;
  }

  void ChangeName(String newName) {
    this._name = newName;
  }

  void changeSurname(String newSurname) {
    this._surname = newSurname;
  }

  void changeNameAndSurname(String newName, String newSurname) {
    ChangeName(newName);
    changeSurname(newSurname);
  }
}
