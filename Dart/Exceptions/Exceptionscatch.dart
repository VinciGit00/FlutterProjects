void main(List<String> args) {
  int x = 12;
  int y = 0;
  int k;

  try {
    k = x ~/ y;
  }
  //Catch a general exception
  catch (e) {
    print("Exception caught " + e.toString());
  }
}
