///Each class, method or section of code should only responsible for one thing, this makes code
///easier to read, easier to test and easier to maintain (we can replace a single class if needed)

///Result class is utilises other classes, each class is responsible for one thing
class Result {
  checkResult(int rollno) {
    bool isRollnoValidate = Validate().isRollnovalidate();
    if (isRollnoValidate) {
      ResultModel resultModel = NetworkApi().searchResult();
      Printing().showResult(resultModel);
    } else {
      return "Invalid rollno";
    }
  }
}

class Validate {
  // this is responsible for validate
  isRollnovalidate() {
    return true;
  }
}

class ResultModel {}

class Printing {
  // this class is responsible for printing
  showResult(ResultModel model) {
    // show result in pleasant way
  }
}

class NetworkApi {
  // this class is responsible for fetching result
  searchResult() {
    return ResultModel();
  }
}

///example without Single responsibility principle, [Result] class is responsible for
///all fetching data, checking validity and printing
// class Result
// {

//   checkResult(int rollno)
//   {
//     bool isRollnoValidate = isRollnovalidate();
//     if(isRollnoValidate)
//     {

//       ResultModel resultModel = searchResult();
//       showResult(resultModel);
//     }
//     else{
//       return "Invalid rollno";
//     }

//   }

//   isRollnovalidate()
//   {

//     return true;
//   }

// // get request
//   searchResult()
//   {
//     // return result;
//   }

// //painting
//  showResult(ResultModel model)
//   {
//     // show result in pleasant way 
//   }

// }

// class ResultModel
// {

// }