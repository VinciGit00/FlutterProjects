void main(List<String> args) {
  //Method 1
  var user = {
    'Username': 'Peter',
    'Password': 'peter123',
    'role': 'admin',
    'stafdNR': 1234
  };

  //Method 2
  Map<String, dynamic> map = {
    'Username': 'Peter',
    'Password': 'peter123',
    'role': 'admin',
    'stafdNR': 1234
  };

  print(user);
  print(map);

  //Get a single value of the  map
  var variabile = map["Username"];

  print("Variabile estratta: " + variabile);

  //Change the value of an element
  map["Username"] = "Nuovo Username";
  map["role"] = "Nuovo ruolo";
  variabile = map["Username"];

  print("Variabile estratta: " + variabile);

  //Casting an element to string
  var variabile2 = map["Username"] as String;
  //Now it's possibile to ha have the length
  print(variabile2.length);

  try {
    var variabile3 = map["iPAddress"] as String;
    //Accessing values that do not exist
    print(variabile3);
  } catch (e) {
    print("Exception when you try to access to a non existing variable");
  }

  //How to iterate the keys in a list
  //You have
  for (var elem in user.keys) {
    print(elem);
  }

  //How to iterate the values in a list
  for (var elem in user.values) {
    print(elem);
  }

  //Alternatively you can use the following method
  //to iterate the values
  for (var elem in user.keys) {
    print(elem + " : " + user[elem].toString());
  }
}
