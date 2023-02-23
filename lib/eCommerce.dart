import 'package:e_commerce_app/ClassProduct.dart';
import 'package:e_commerce_app/ProductPicDetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ecommerce(),
    );
  }
}

class ecommerce extends StatefulWidget {
  // final String title;
  //
  // ecommerce({required this.title});

  @override
  State<ecommerce> createState() => _ecommerceState();
}

class _ecommerceState extends State<ecommerce> {
  List<Products> listproducts = [
    Products(
        productName: "Camera",
        description: "Good Product",
        productPrice: 10000,
        productPic: "assets/images/camera.jpg"),
    Products(
        productName: "lipsticks",
        description: "Madora lipsticks",
        productPrice: 1000,
        productPic: "assets/images/lipstick.jpg"),
  ];
  TextEditingController productname = TextEditingController();
  TextEditingController productdescription = TextEditingController();
  TextEditingController productprice = TextEditingController();
  TextEditingController productPic = TextEditingController();
  update(int index) {
    productname.text = listproducts[index].productName;
    productdescription.text = listproducts[index].description;
    productprice.text = listproducts[index].productPrice.toString();
    productPic.text = listproducts[index].productPic;
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.black,
            child: Column(
              children: [
                Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: productname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Product Name"),
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: productdescription,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                          label: Text("Product Description"),
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: productprice,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Product Price"),
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: productPic,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                          label: Text("Product Images"),
                        ),
                      ),
                    )),
                Container(
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                      onPressed: () {
                        // updateProducts();
                        setState(() {
                          if (productname.text == "") {
                            if (productdescription.text == "") {
                              if (productprice.text == "") {}
                            }
                          } else {
                            listproducts[index].productName = productname.text;
                            listproducts[index].description =
                                productdescription.text;
                            listproducts[index].productPrice =
                                double.parse(productprice.text);
                            listproducts[index].productPic = productPic.text;
                          }
                          productprice.clear();
                          productname.clear();
                          productdescription.clear();
                          productPic.clear();
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Update")),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctn, index) => Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: ListTile(
            onLongPress: () {
              update(index);
            },
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Pic(
                            productDetails: listproducts[index],
                          )));
            },
            title: Column(
              children: [
                Text("Product: ${listproducts[index].productName}"),
                Text("Description: ${listproducts[index].description}"),
              ],
            ),
            subtitle: Text(
                "Price: ${listproducts[index].productPrice.toString()}PKR"),
            leading: Container(
              child: Image(
                image: AssetImage(listproducts[index].productPic),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        title: Text("Delete"),
                        content: Text(
                            "Are you sure? You really want to delete this product?"),
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent),
                              onPressed: () {
                                setState(() {
                                  listproducts.removeAt(index);
                                  Navigator.pop(context);
                                  var snackBar =
                                      SnackBar(content: Text("Deleted"));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                });
                              },
                              child: Text("Yes")),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("No")),
                        ],
                      );
                    }),
                  );
                });
              },
            ),
          ),
        ),
        itemCount: listproducts.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (ctx) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    color: Colors.black,
                    child: Column(
                      children: [
                        Card(
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: productname,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Product Name"),
                                ),
                              ),
                            )),
                        Card(
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: productdescription,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  alignLabelWithHint: true,
                                  label: Text("Product Description"),
                                ),
                              ),
                            )),
                        Card(
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: productprice,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Product Price"),
                                ),
                              ),
                            )),
                        Card(
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: productPic,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  alignLabelWithHint: true,
                                  label: Text("Product Images"),
                                ),
                              ),
                            )),
                        Container(
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent),
                              onPressed: () {
                                setState(() {
                                  String name = productname.text;
                                  String description = productdescription.text;
                                  double price =
                                      double.parse(productprice.text);
                                  String pic = productPic.text;
                                  listproducts.add(
                                    Products(
                                        productName: name,
                                        description: description,
                                        productPrice: price,
                                        productPic: pic),
                                  );
                                  productprice.clear();
                                  productname.clear();
                                  productdescription.clear();
                                  productPic.clear();
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Text("Sumbit")),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
