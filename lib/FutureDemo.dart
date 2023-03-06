import 'package:e_commerce_app/TabBarMain.dart';
import 'package:flutter/material.dart';

//
// void main() async {
//   Widget data = await getData();
//   print(data);
// }
//
// Future<Widget> getData() {
//   return Future.delayed(Duration(seconds: 5), () => Text("getData Called"));
// }

void main() {
  runApp(MaterialApp(home: FutureDemo()));
}

class FutureDemo extends StatefulWidget {
  const FutureDemo({Key? key}) : super(key: key);

  @override
  State<FutureDemo> createState() => _FutureDemoState();
}

class _FutureDemoState extends State<FutureDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      ChangeScreen();
    });
  }

  Future ChangeScreen() {
    return Future.delayed(Duration(seconds: 3), () {
      return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (build) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image(
              image: AssetImage("assets/images/5.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
