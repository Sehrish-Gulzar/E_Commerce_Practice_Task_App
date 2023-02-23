import 'package:flutter/material.dart';

void main() {
  runApp(Product_list());
}

class Product_list extends StatelessWidget {
  // const Product_list({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(""),
          actions: [Icon(Icons.settings)],
          backgroundColor: Colors.black38,
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text(
                    "File Manager",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 450,
              child: Card(
                color: Colors.grey,
                elevation: 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    prefixStyle: TextStyle(color: Colors.blue),
                    labelText: "Search Files",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/music.jpg"),
                      ),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Audio",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "999+",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/play.jpg"),
                      ),
                    ),
                    Text(
                      "Video",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "999+",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/image.jpg"),
                      ),
                    ),
                    Text(
                      "Images",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "999+",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/app.jpg"),
                      ),
                    ),
                    Text(
                      "Audio",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "256",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/document.jpg"),
                      ),
                    ),
                    Text(
                      "Document",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "721",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/whatsapp.jpg"),
                      ),
                    ),
                    Text(
                      "Whatsapp",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "3",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/download.jpg"),
                      ),
                    ),
                    Text(
                      "Download",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/more.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "More",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(25),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage("assets/images/file.jpg"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "All Files",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Internal Storages",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 5,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(25),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage("assets/images/clean.jpg"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Releases more space",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "123 GB used/128 GB",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 5,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text(
                    "Recent documents",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  height: 30,
                  width: 30,
                  child: Image(
                    image: AssetImage("assets/images/apk.jpg"),
                  ),
                ),
                Container(
                  child: Text(
                    "Mega Downloads",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 200,
                ),
                Container(
                  child: Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage("assets/images/war.jpg"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Bazooka.WarShooting.mod.apk",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      child: Text(
                        "62.80 MB",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
