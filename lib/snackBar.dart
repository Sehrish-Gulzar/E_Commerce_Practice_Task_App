import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarClass());
}

class SnackBarClass extends StatefulWidget {
  const SnackBarClass({Key? key}) : super(key: key);

  @override
  State<SnackBarClass> createState() => _SnackBarClassState();
}

class _SnackBarClassState extends State<SnackBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var snackBar = SnackBar(content: Text("This is SnackBar"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text("Click Here"),
        ),
      ),
    );
  }
}
