import 'package:flutter/material.dart';

import 'ClassProduct.dart';
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
  // const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
              child: Text(
            "E Commerce App",
          )),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            tabs: [
              Tab(
                icon: Icon(Icons.cases_sharp),
                text: ("Products"),
              ),
              Tab(
                icon: Icon(Icons.people_alt_rounded),
                text: ("Customers"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProductTab(),
            CustomerTab(),
          ],
        ),
      ),
    );
  }
}

class ProductTab extends StatefulWidget {
  const ProductTab({Key? key}) : super(key: key);

  @override
  State<ProductTab> createState() => _ProductTabState();
}

class _ProductTabState extends State<ProductTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 3,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            tabs: [
              Tab(
                icon: Icon(Icons.border_all),
                text: ("All Products"),
              ),
              Tab(
                icon: Icon(Icons.category),
                text: ("Categories"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Product_list(),
            PicCategories(),
          ],
        ),
      ),
    );
  }
}

class CustomerTab extends StatefulWidget {
  const CustomerTab({Key? key}) : super(key: key);

  @override
  State<CustomerTab> createState() => _CustomerTabState();
}

class _CustomerTabState extends State<CustomerTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 3,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            tabs: [
              Tab(
                icon: Icon(Icons.cases_sharp),
                text: ("Customer"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: []),
      ),
    );
  }
}

class PicCategories extends StatefulWidget {
  const PicCategories({Key? key}) : super(key: key);

  @override
  State<PicCategories> createState() => _PicCategoriesState();
}

class _PicCategoriesState extends State<PicCategories> {
  List camera = [
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
  ];
  List perfumes = [
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
  ];
  List cosmetics = [
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 3,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            tabs: [
              Tab(
                text: ("Cameras"),
              ),
              Tab(
                text: ("Persfumes"),
              ),
              Tab(
                text: ("Cosmetics"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 10,
                        maxCrossAxisExtent: 300,
                        mainAxisSpacing: 10),
                    children: camera
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
            Container(
                child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 10,
                        maxCrossAxisExtent: 300,
                        mainAxisSpacing: 10),
                    children: perfumes
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
            Container(
                child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 10,
                        maxCrossAxisExtent: 300,
                        mainAxisSpacing: 10),
                    children: cosmetics
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
          ],
        ),
      ),
    );
  }
}
