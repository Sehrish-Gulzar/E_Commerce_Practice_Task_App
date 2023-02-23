class Products {
  String productName;
  String description;
  double productPrice;
  String productPic;
  Products(
      {required this.productName,
      required this.description,
      required this.productPrice,
      required this.productPic});
}

class Customers {
  String customerName;
  String customerAdd;
  int customerNo;
  Customers(
      {required this.customerName,
      required this.customerAdd,
      required this.customerNo});
}

class Data {
  String name = "";
  String pass = "";
  String num = "";
  String email = "";
  String gender = "";
  var genderPic;
  Data(
      {required this.num,
      required this.pass,
      required this.email,
      required this.name,
      required this.gender,
      required this.genderPic});
}
