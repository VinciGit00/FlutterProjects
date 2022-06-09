class Rectangle {
  late double width;
  late double height;

  //You can also not specifing the classical parameters
  Rectangle(this.width, this.height);

  double getArea() {
    return this.width * this.height;
  }
}
