class Person {
  String name;
  String surname;
  String birthday;

  Person(this.name, this.surname, this.birthday);

  //Create the element from a json
  static Person fromJson(json) =>
      Person(json["name"], json["surname"], json["birthday"]);
}
