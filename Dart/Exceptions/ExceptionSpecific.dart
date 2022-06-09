void main(List<String> args) {
  int x = 12;
  int y = 0;
  int k;

  try {
    k = x ~/ y;
    //This line is not executed
    print("Hello world");
  }
  //Catch a general exception
  on IntegerDivisionByZeroException catch (e) {
    print("Exception caught " + e.toString());
  } catch (e) {
    print("General exception" + e.toString());
  }

  //This line is executed
  print("Script finished");
}
