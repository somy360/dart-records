///no client should be forced to depend on methods it does not use
///client should never depend on anything more than the method its calling
///Instead of having one large interface, it's better to have multiple smaller, more specific interfaces.

///Here we split the methods into two seperate interfaces and only implement the ones relevant to us
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class HumanWorker implements Workable, Eatable {
  void work() {
    // Human working
  }

  void eat() {
    // Human eating
  }
}

class RobotWorker implements Workable {
  void work() {
    // Robot working
  }
}

///Here the Robot worker class is forced to implement a method that is not relevant to it
// abstract class Worker {
//   void work();
//   void eat();
// }

// class HumanWorker implements Worker {
//   work() {
//     // Human working
//   }

//   eat() {
//     // Human eating
//   }
// }

// class RobotWorker implements Worker {
//   work(){
//     // Robot working
//   }

//   eat(){
//     // Robots don't eat, but must implement this method
//   }
// }