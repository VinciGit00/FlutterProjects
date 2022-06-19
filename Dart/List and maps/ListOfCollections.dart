void main(List<String> args) {
  //Sorting a list of maps
  List<Map<String, dynamic>> listOfMaps = [
    {
      "Exam": "Sistemi di controllo di gestione",
      "Name": "Marco",
      "Surname": "Vinciguerra",
      "Mark": 28,
      "Credits": 8
    },
    {
      "Exam": "GAL",
      "Name": "Simone",
      "Surname": "Capeletti",
      "Mark": 26,
      "Credits": 6
    }
  ];

  print(listOfMaps);

  // To sort the collection of maps:
  listOfMaps.sort(((a, b) => a["Surname"].compareTo(b["Surname"])));
  print(listOfMaps);
}
