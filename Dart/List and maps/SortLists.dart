void main(List<String> args) {
  //Define a list of intenger
  var a = [23, 4, 432, 43, 5, 42, 54, 54, 5, 2, 4532, 5, 524, 3, 42];

  //Method 1: sort in a simple way, only with sort
  a.sort();

  print(a);

  //Method 2: Definining a compare method
  var b = [23, 4, 432, 43, 5, 42, 54, 54, 5, 2, 4532, 5, 524, 3, 42];

  //Defining a compare method
  b.sort((a, b) => a.compareTo(b));
  print(b);

  //Sort descending-> you need to design the compare method
  var c = [23, 4, 432, 43, 5, 42, 54, 54, 5, 2, 4532, 5, 524, 3, 42];

  c.sort((a, b) => b.compareTo(a));
  print(c);

  //Define a list of Strings
  var d = ["Marco", "Giuseppe", "Simone"];

  d.sort();

  print(d);
}
