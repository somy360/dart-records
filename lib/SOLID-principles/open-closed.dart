///An entity should be open for extensions but closed for modification
///or good practise you should be able to add new features without modifying the existing code.

///After applying Open CLOSED PRINCIPLE. We create a class for adding new functionality.
abstract class Result {
  checkResult();
}

class ComputerScience implements Result {
  @override
  checkResult() {
    // some code
  }
}

class Civil implements Result {
  @override
  checkResult() {
    // some code
  }
}

class Mechanical implements Result {
  @override
  checkResult() {
    // some code
  }
}

///Here if we want to add functionality we need to edit our existing code
// class Result
// {
//   mechanicalCheckResult()
//   {
//     // some code 
//   }

//   civilCheckResult()
//   {
//     // some code 
//   }
// }