import 'package:e_commerce_app/ClassProduct.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Product_list());
}

class Product_list extends StatelessWidget {
  // const Product_list({Key key}) : super(key: key);

  List<Products> productList = [
    Products(
        productName: "Camera",
        description: "Good Product",
        productPrice: 10000,
        productPic: "assets/images/camera.jpg"),
    Products(
        productName: "Camera",
        description: "Good Product",
        productPrice: 109900,
        productPic: "assets/images/camera2.jpg"),
    Products(
        productName: "Camera",
        description: "Good Product",
        productPrice: 60000,
        productPic: "assets/images/camera3.jpg"),
    Products(
        productName: "Camera",
        description: "Good Product",
        productPrice: 170000,
        productPic: "assets/images/camera4.jpg"),
    Products(
        productName: "Camera",
        description: "Good Product",
        productPrice: 80000,
        productPic: "assets/images/camera5.jpg"),
    Products(
        productName: "lipsticks",
        description: "Madora lipsticks",
        productPrice: 1000,
        productPic: "assets/images/lipstick.jpg"),
    Products(
        productName: "Bags",
        description: "Leather Material",
        productPrice: 50000,
        productPic: "assets/images/bags.jpg"),
    Products(
        productName: "Brushes",
        description: "fine Brushes",
        productPrice: 1000,
        productPic: "assets/images/brushes.jpg"),
    Products(
        productName: "Perfume",
        description: "Heavenly Vibes ",
        productPrice: 1500,
        productPic: "assets/images/perfume.jpg"),
    Products(
        productName: "Perfume",
        description: "Pure ",
        productPrice: 2000,
        productPic: "assets/images/perfume2.jpg"),
    Products(
        productName: "Perfumes",
        description: "Hypnotic Poison ",
        productPrice: 2500,
        productPic: "assets/images/perfume3.jpg"),
    Products(
        productName: "Perfumes",
        description: "Coco ",
        productPrice: 1500,
        productPic: "assets/images/perfume4.jpg"),
    Products(
        productName: "Perfumes",
        description: "Versace ",
        productPrice: 1500,
        productPic: "assets/images/perfume5.jpg"),
    Products(
        productName: "Cosmetic",
        description: " Mix ",
        productPrice: 15000,
        productPic: "assets/images/makeup1.jpg"),
    Products(
        productName: "Primer",
        description: " good primer ",
        productPrice: 1000,
        productPic: "assets/images/makeup2.jpg"),
    Products(
        productName: "FaceWash",
        description: " Glow face wash ",
        productPrice: 500,
        productPic: "assets/images/makeup3.jpg"),
    Products(
        productName: "Nail Polish ",
        description: " Brown ",
        productPrice: 150,
        productPic: "assets/images/makeup4.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.black,
          body: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: 300,
                  mainAxisSpacing: 10),
              children: productList
                  .map((product) => Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 200,
                              height: 200,
                              image: AssetImage(product.productPic),
                              fit: BoxFit.fill,
                            ),
                            Container(
                              child: Text(
                                product.productPrice.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        // color: Colors.black,
                      ))
                  .toList())),
    );
  }
}
