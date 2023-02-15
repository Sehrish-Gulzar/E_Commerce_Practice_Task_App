import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: TabDemo()),
  );
}

class TabDemo extends StatefulWidget {
  const TabDemo({Key? key}) : super(key: key);

  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chat App"),
          bottom: TabBar(
            onTap: (index) {},
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: ("Chat"),
              ),
              Tab(
                icon: Icon(Icons.image),
                text: ("Gallery"),
              ),
              Tab(
                icon: Icon(Icons.call),
                text: ("Call"),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: ListView.builder(
              itemBuilder: (ctn, index) => Container(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    child: Image(
                      image: AssetImage("assets/images/1.jpg"),
                    ),
                  ),
                  title: Column(
                    children: [Text("Sehrish")],
                  ),
                  trailing: Column(
                    children: [
                      Icon(Icons.access_time),
                      Text(
                        "5.00 pm",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 10,
            ),
          ),
          Center(
              child: Text(
            "Gallery",
            style: TextStyle(fontSize: 30),
          )),
          Center(
              child: Text(
            "Call",
            style: TextStyle(fontSize: 30),
          )),
        ]),
      ),
    );
  }
}
