# Classes

Most important observations:

- Very similar to Java classes
- Example of private field:

```dart
String _name = "";
```

As you can see to make private the field you have to add \_ before the parameter name.

It’s not recommended to use private field and after a get method.

- To cast from int to String:

```dart
// e.age is an int number
e.age.toString()
```

- It is possible also to create multiple constructors of a classe with the following methods

```dart
  // First constructor
  Employee(String name, String surname) {
    this._name = name;
    this._surname = surname;
    //default age
    this.age = 20;
  }

  // Second constructor
  Employee.secondConstructor(String name, String surname, int age) {
    this._name = name;
    this._surname = surname;
    this.age = age;
  }

  // Third constructor
  Employee.thirdConstructor(String surname) {
    this._name = "no name";
    this._surname = surname;
    //default age
    this.age = 20;
  }
```

- Other method to create classes without all the details:

```dart
class Rectangle {
  late double width;
  late double height;

  //You can also not specifing the classical parameters
  Rectangle(this.width, this.height);
}
```

- To extend classes you should use the keyword super:(), otherwise you can’t do that:

```dart
class Rectangle {
  late double width;
  late double height;

  //You can also not specifing the classical parameters
  Rectangle(this.width, this.height);
}

class Square extends Rectangle {
  Square(double lenght) : super(lenght, lenght);
}
```

- Other example of extension of a class:

```dart
class SpecializedEmployee extends Employee {

  //Constructor-> now I invoke the superclass
  SpecializedEmployee(String name, String surname) : super(name, surname);
}
```

- To create an abstract class:

You should use the prefix word abstract

```dart
abstract class Person {
  late String name;
  late String surname;

  Person(this.name, this.surname);
}
```

And for extending the superclass:

```dart
class worker extends Person {
  late String factory;

  worker(String name, String surname, this.factory) : super(name, surname);
}
```
