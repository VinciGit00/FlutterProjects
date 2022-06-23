void main(List<String> args) {
  List<Map<String, dynamic>> specificElement = [
    {"Name": "Marco", "Surname": "Vinciguerra"},
    {"Name": "Claudia", "Surname": "Avizzano"}
  ];

  for (Map<String, dynamic> elem in specificElement) {
    if (elem["Surname"] == "Vinciguerra") {
      print(elem["Name"] + " " + elem["Surname"]);
    }
  }
}
