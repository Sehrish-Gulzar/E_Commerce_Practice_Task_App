import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DepDemo()));
}

class DepDemo extends StatefulWidget {
  const DepDemo({Key? key}) : super(key: key);

  @override
  State<DepDemo> createState() => _DepDemoState();
}

class _DepDemoState extends State<DepDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Center(child: Text("Dependecies Demo")),
          bottom: TabBar(
            unselectedLabelColor: Colors.yellow,
            indicator: BoxDecoration(color: Colors.grey),
            tabs: [
              Tab(
                text: ("All Words"),
              ),
              Tab(
                text: "Adjective",
              ),
              Tab(
                text: "Noun",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: ListView.builder(
                  itemCount: all.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.black87,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            all[index],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              child: ListView.builder(
                  itemCount: adjectives.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.black87,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            adjectives[index],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              child: ListView.builder(
                  itemCount: nouns.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.black87,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            nouns[index],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
