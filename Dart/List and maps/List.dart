void main(List<String> args) {
  List names = ["Marco", "Franco", "Claudia"];

  //Once created these elements are immutable and you can't modify it
  //If you try to change it an exception occurred
  List names2 = const ["Marco", "Franco", "Claudia"];

  print(names);

  //To add a value in the list
  names.add("Marco");

  print(names);

  //Removing objects
  //Method 1: using the position
  names.removeAt(0);
  print(names);

  //Method 2: using the direct value
  names.remove("Marco");
  print(names);

  //Iteration of a list
  for (var names in names) {
    print(names);
  }

  //It also concatenate the other List
  var names3 = ["ciao", ...names];

  var add = false;
  //Creating element in list with conditional values (boolean)
  List names4 = ["Marco", "Franco", if (add) "Claudia"];
  print(names4);

  //Creating element in list with a for loop
  List names5 = ["Marco", "Franco", for (int i = 1; i < 6; i++) "Claudia $i"];
  print(names5);

  //Ad an element to a list
  names.add("New element");
}
