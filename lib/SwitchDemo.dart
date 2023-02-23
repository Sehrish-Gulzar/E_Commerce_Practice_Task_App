import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SwitchDemo()));
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isSelected = false;
  bool isSelected2 = false;

  bool isChecked = false;
  bool isChecked2 = false;

  String groupValue = "";
  String groupValue1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Switch
          SwitchListTile(
              title: Text("Bags"),
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value;
                  isSelected2 = false;
                });
                print(value);
              }),
          SwitchListTile(
              title: Text("Shoes"),
              value: isSelected2,
              onChanged: (value) {
                setState(() {
                  isSelected2 = value;
                  isSelected = false;
                  // isSelected = !isSelected;
                });
                print(value);
              }),

          // Radio List Tile
          RadioListTile(
              title: Text("Car"),
              value: "Car",
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value.toString()!;
                });
                print(value);
              }),
          RadioListTile(
              title: Text("BIke"),
              value: "Bike",
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value.toString()!;
                });
                print(value);
              }),
          RadioListTile(
              title: Text("Male"),
              value: "Male",
              groupValue: groupValue1,
              onChanged: (value) {
                setState(() {
                  groupValue1 = value.toString()!;
                });
                print(value);
              }),
          RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: groupValue1,
              onChanged: (value) {
                setState(() {
                  groupValue1 = value.toString()!;
                });
                print(value);
              }),

          // Check Box
          CheckboxListTile(
              title: Text("Apple"),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              }),
          CheckboxListTile(
              title: Text("Samsung"),
              value: isChecked2,
              onChanged: (value) {
                setState(() {
                  isChecked2 = value!;
                });
              }),
        ],
      ),
    );
  }
}
