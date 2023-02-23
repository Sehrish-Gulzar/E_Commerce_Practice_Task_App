import 'package:e_commerce_app/Login.dart';
import 'package:e_commerce_app/cartDetails.dart';
import 'package:e_commerce_app/customerData.dart';
import 'package:e_commerce_app/eCommerce.dart';
import 'package:flutter/material.dart';

import 'gridviewDemo.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> listOfWidgets = [
    ecommerce(),
    Customer(),
    // ContactUs(),
    Product_list(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
            child: Text(
          "E Commerce App",
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.red,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 30,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: (currentIndex) {
            setState(() {
              this.currentIndex = currentIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.paste_sharp), label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: "Customers"),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.phone),
            //   label: "Contact Us",
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_rounded),
              label: "All Products",
            ),
          ]),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      child: Image(
                        image: AssetImage("assets/images/galaxy.jpg"),
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Galaxy Cosmetic Store",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: Login.myuser[0].genderPic,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Name: ${Login.myuser[0].name}"),
                  Text("Email: ${Login.myuser[0].email}"),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("All Products"),
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ecommerce()));
                setState(() {
                  this.currentIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart_rounded),
              title: Text("Products"),
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ecommerce()));
                setState(() {
                  this.currentIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Customer"),
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Customer()));
                setState(() {
                  this.currentIndex = 1;
                });
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.phone),
            //   title: Text("Contact Us"),
            //   onTap: () {
            //     Navigator.pop(context);
            //     // Navigator.push(context,
            //     //     MaterialPageRoute(builder: (context) => Customer()));
            //     setState(() {
            //       this.currentIndex = 2;
            //     });
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.ad_units),
              title: Text("Signout"),
            ),
          ],
        ),
      ),
      body: Center(child: listOfWidgets[currentIndex]),
    );
  }
}
