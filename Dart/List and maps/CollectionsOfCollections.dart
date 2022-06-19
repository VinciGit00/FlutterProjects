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

  int sum = 0;
  int TotalCredits = 0;
  int count = 0;
  int Partialsommatory = 0;

  for (var e1 in names_marks.keys) {
    //The first element is the index of the map
    //and the second element is the element you need
    //to make calculus
    print(names_marks[e1]!["Mark"]);
    print(names_marks[e1]!["Credits"]);

    //Credits
    int singleElementCredit = names_marks[e1]!["Credits"];
    TotalCredits += singleElementCredit;

    //Sum
    int singleElementSum = names_marks[e1]!["Mark"];
    sum += singleElementSum;

    //For weigthed average
    Partialsommatory += singleElementSum * singleElementCredit;

    //For weighted average
    count++;
  }
  print("Total credits: " + TotalCredits.toString());

  double mean = sum / count;
  print("Mean: " + mean.toString());

  double weightedAverage = Partialsommatory / TotalCredits;
  print("Weighted average: " + weightedAverage.toString());
}
