void main(List<String> args) {
  //Method 1
  var user = {
    'Username': 'Peter',
    'Password': 'peter123',
    'role': 'admin',
    'stafdNR': 1234
  };

  //Method 2
  Map<String, dynamic> mappa = {
    'Username': 'Peter',
    'Password': 'peter123',
    'role': 'admin',
    'stafdNR': 1234
  };

  print(user);
  print(mappa);
}
