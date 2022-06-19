import 'dart:collection';

void main(List<String> args) {
  Map<String, int> mappa = {
    "price 1": 6,
    "price 2": 5,
    "price 3": 4,
    "price 4": 3,
    "price 5": 2,
    "price 6": 1,
  };

  //Ascending
  var sortedKeys = mappa.keys.toList(growable: false)
    ..sort((k1, k2) => mappa[k1]!.compareTo(mappa[k2]!));
  LinkedHashMap sortedMap = new LinkedHashMap.fromIterable(sortedKeys,
      key: (k) => k, value: (k) => mappa[k]);

  print(sortedMap);

  //Descending
  sortedKeys = mappa.keys.toList(growable: false)
    ..sort((k1, k2) => mappa[k2]!.compareTo(mappa[k1]!));
  LinkedHashMap sortedMap2 = new LinkedHashMap.fromIterable(sortedKeys,
      key: (k) => k, value: (k) => mappa[k]);
  print(sortedMap2);
}
