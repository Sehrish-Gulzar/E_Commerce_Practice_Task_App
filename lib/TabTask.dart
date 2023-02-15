import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: TabDemo()),
  );
}

List<Widget> avatars = [
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/1.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/2.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/3.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/4.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/5.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/6.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/7.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/8.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/9.jpg"),
  ),
  CircleAvatar(
    backgroundImage: AssetImage("assets/images/10.jpg"),
  ),
];
List names = [
  "Paddy O'Furniture",
  "Olive Yew",
  "Aida Bugg",
  "Maureen Biologist",
  "Teri Dactyl",
  "Peg Legge",
  "Allie Grater",
  "Del Phineum",
  "Rose Bush",
  "Perry Scope"
];

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
                    child: avatars[index],
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  ),
                  title: Column(
                    children: [Text(names[index])],
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
              itemCount: avatars.length,
            ),
          ),
          Container(
            child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 10,
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 10),
                children: avatars),
          ),
          Container(
            child: ListView.builder(
              itemBuilder: (ctn, index) => Container(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.redAccent,
                  ),
                  title: Column(
                    children: [
                      Text(names[index]),
                      Text(
                        "030090078601",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Icon(Icons.access_time),
                      Text(
                        "12.00 pm",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: avatars.length,
            ),
          ),
        ]),
      ),
    );
  }
}
