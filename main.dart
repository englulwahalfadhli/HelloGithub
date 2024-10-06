void main() {
  final customer = Customer("Khalid");
  customer.add(54.5);
  customer.add(12.2);
  print("Regular customer: ${customer.getPurchaseAmount()}");

  final loyalCustomer = LoyalCustomer("Sara");
  loyalCustomer.add(54.5);
  loyalCustomer.add(12.2);
  print("Loyal customer: ${loyalCustomer.getPurchaseAmount()}");
}

class Customer {
  String name;
  double _purchaseAmount = 0; // Set purchaseAmount as private using _

  Customer(this.name);

  void add(double price) {
    _purchaseAmount += price;
  }

  double getPurchaseAmount() {
    return _purchaseAmount;
  }
}

class LoyalCustomer extends Customer {
  LoyalCustomer(String name) : super(name);

  @override
  double getPurchaseAmount() {
    return super.getPurchaseAmount() * 0.9; // Apply 10% discount
  }
}
