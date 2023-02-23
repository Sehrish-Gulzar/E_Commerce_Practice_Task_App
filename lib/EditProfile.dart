import 'package:e_commerce_app/ClassProduct.dart';
import 'package:e_commerce_app/SignUp%20Page.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

void main() {
  runApp(MaterialApp(home: EditProfile()));
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var isTrue = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController numController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    emailController.text = Login.myuser[0].email;
    passController.text = Login.myuser[0].pass;
    numController.text = Login.myuser[0].num;
    nameController.text = Login.myuser[0].name;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isTrue = !isTrue;
                });
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: Column(
        children: [
          Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: numController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                    label: Text("Number"),
                  ),
                  readOnly: isTrue,
                  keyboardType: TextInputType.number,
                ),
              )),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                  label: Text("Email"),
                ),
                readOnly: isTrue,
              ),
            ),
          ),
          Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                    label: Text("Name"),
                  ),
                  readOnly: isTrue,
                ),
              )),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                  label: Text("Password"),
                ),
                readOnly: isTrue,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (SignUp.groupValue1 == "Male") {
                    Login.myuser[0] = Data(
                        num: numController.text,
                        pass: passController.text,
                        email: emailController.text,
                        name: nameController.text,
                        gender: SignUp.groupValue1,
                        genderPic: SignUp.gender[0]);
                  }
                  if (SignUp.groupValue1 == "Female") {
                    Login.myuser[0] = Data(
                        num: numController.text,
                        pass: passController.text,
                        email: emailController.text,
                        name: nameController.text,
                        gender: SignUp.groupValue1,
                        genderPic: SignUp.gender[1]);
                  }
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                });
              },
              child: Text("Update"))
        ],
      ),
    );
  }
}
