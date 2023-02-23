import 'package:e_commerce_app/ClassProduct.dart';
import 'package:flutter/material.dart';

List<Widget> cart = [];

class Pic extends StatefulWidget {
  final Products productDetails;

  Pic({required this.productDetails, Key? key}) : super(key: key);

  @override
  State<Pic> createState() => _PicState();
}

class _PicState extends State<Pic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(child: Text("Product Details")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            child: Image(
              image: AssetImage(widget.productDetails.productPic),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Text(
              "Product: ${widget.productDetails.productName}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            child: Text(
              "Description: ${widget.productDetails.description}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            child: Text(
              "Price: ${widget.productDetails.productPrice.toString()}PKR",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () {
                setState(() {
                  cart.add(
                    ListTile(
                      title: Column(
                        children: [
                          Text(
                            "Product: ${widget.productDetails.productName}",
                          ),
                          Text(
                              "Description: ${widget.productDetails.description}"),
                        ],
                      ),
                      subtitle: Text(
                          "Price: ${widget.productDetails.productPrice.toString()}PKR"),
                      leading: Container(
                        child: Image(
                          image: AssetImage(widget.productDetails.productPic),
                        ),
                      ),
                    ),
                  );
                });
              },
              child: Column(
                children: [
                  Icon(Icons.add),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
