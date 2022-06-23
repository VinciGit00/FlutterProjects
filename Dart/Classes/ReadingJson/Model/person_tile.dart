class Person {
  late String name;
  late String surname;
  late String birthday;

  Person(this.name, this.surname, this.birthday);

  //Create the element from a json
  static Person fromJson(json) =>
      Person(json["name"], json["surname"], json["birthday"]);
}
