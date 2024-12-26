///high-level modules should not depend on low-level modules, and both should depend on abstractions
///allows for lose coupling, testability, maintainability, and scalability

///here our checkout class doesn't need to know anything about our implementations of payment
abstract class Payment {
  payment();
}

class PaymentViaCreditCard implements Payment {
  @override
  payment() {
    // some code
  }
}

class PaymentViaDebitCard implements Payment {
  @override
  payment() {
    // some code
  }
}

class PaymentViaBhimUPI implements Payment {
  @override
  payment() {
    // some code
  }
}

class Checkout {
  // our checkout class knows nothing about how payment works
  // its knows pay.payment() is paying method
  checkOut(Payment pay) {
    pay.payment();
  }
}
