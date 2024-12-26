///A subclass can replace its superclass without breaking the program
///How well do we utilise abstraction
///Prefer composition (with interfaces) over inheritance

///Here its not possible to create an intance of [Green] that will return the wrong color
abstract class Color {
  void getColor();
}

class Green implements Color {
  @override
  void getColor() {
    print('Green');
  }
}

class Blue implements Color {
  @override
  void getColor() {
    print("Blue");
  }
}

class Main {
  void main() {
    Color color = new Blue();
    color.getColor();
    //output: Blue
  }
}

///Here we can create a green class which will return the color blue
// class Green {
//   void getColor() {
//     print('Green');
//   }
// }

// class Blue extends Green {
//   void getColor() {
//     print("Blue");
//   }
// }

// class Main {
//   main() {
//     // violate LSP because color of green object is blue
//     Green green = new Blue();
//     green.getColor();
//     //output: Blue
//   }
// }
