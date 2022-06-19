void main(List<String> args) {
  Map<String, Map<String, dynamic>> names_marks = {
    "Fist participant": {
      "Exam": "Sistemi di controllo di gestione",
      "Name": "Marco",
      "Surname": "Vinciguerra",
      "Mark": 28,
      "Credits": 8
    },
    "Second participant": {
      "Exam": "GAL",
      "Name": "Simone",
      "Surname": "Capeletti",
      "Mark": 26,
      "Credits": 6
    }
  };

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

  listOfMaps.sort(((a, b) => a["Surname"].compareTo(b["Surname"])));
  print(listOfMaps);
}
