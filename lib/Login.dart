import 'package:e_commerce_app/SignUp Page.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

import 'ClassProduct.dart';

class Login extends StatefulWidget {
  static List<Data> myuser = [];
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var isHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var isCheck = false;
  String? email;
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: Center(
                child: Text(
              "Login Screen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            color: Colors.black12,
          ),
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
                  suffixIcon: IconButton(
                    icon: Icon(
                        isHidden ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          CheckboxListTile(
              title: Text("Stay SignIn"),
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              }),
          ElevatedButton(
            onPressed: () {
              setState(() {
                email = emailController.text;
                pass = passController.text;
                for (int i = 0; i < SignUp.mydata.length; i++) {
                  if (SignUp.mydata[i].email == email &&
                      SignUp.mydata[i].pass == pass) {
                    Login.myuser.add(Data(
                        num: SignUp.mydata[i].num,
                        pass: SignUp.mydata[i].pass,
                        email: SignUp.mydata[i].email,
                        name: SignUp.mydata[i].name,
                        gender: SignUp.groupValue1,
                        genderPic: SignUp.mydata[i].genderPic));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    Text("Invalid email or pass");
                  }
                }
              });
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: Text("SignUp"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
