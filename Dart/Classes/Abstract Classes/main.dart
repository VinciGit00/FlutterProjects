import 'rectangle.dart';
import 'square.dart';

void main(List<String> args) {
  Rectangle r = new Rectangle(10, 20);

  print("Area of the rectangle: " + r.getArea().toString());

  Square s = new Square(10);

  print("Area of the square: " + s.getArea().toString());
}
