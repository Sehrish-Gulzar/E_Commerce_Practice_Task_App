import 'package:e_commerce_app/ClassProduct.dart';
import 'package:e_commerce_app/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SignUp()));
}

class SignUp extends StatefulWidget {
  static List<Data> mydata = [
    Data(
        num: "030134800",
        pass: "123",
        email: "lare123",
        name: "Laraib",
        gender: "Female",
        genderPic: SignUp.gender[1]),
    Data(
        num: "03323000",
        pass: "123",
        email: "sehri123",
        name: "Sehrish",
        gender: "Female",
        genderPic: SignUp.gender[1])
  ];
  static List gender = [
    Container(
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/1.jpg"),
        radius: 50,
      ),
    ),
    Container(
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/2.jpg"),
        radius: 50,
      ),
    ),
  ];
  static String groupValue = "";
  static String groupValue1 = "";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var isHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController numController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  String name = "";
  String pass = "";
  String num = "";
  String email = "";
  var isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: Center(
                child: Text(
              "SignUp Screen",
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
                  controller: numController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                    label: Text("Number"),
                  ),
                  keyboardType: TextInputType.number,
                ),
              )),
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
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: isHidden,
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
          RadioListTile(
              title: Text("Male"),
              value: "Male",
              groupValue: SignUp.groupValue1,
              onChanged: (value) {
                setState(() {
                  SignUp.groupValue1 = value.toString();
                });
                print(value);
              }),
          RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: SignUp.groupValue1,
              onChanged: (value) {
                setState(() {
                  SignUp.groupValue1 = value.toString();
                });
                print(value);
              }),
          CheckboxListTile(
              title: Text("Is married"),
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              }),
          ElevatedButton(
            onPressed: () {
              setState(() {
                name = nameController.text;
                email = emailController.text;
                pass = passController.text;
                num = numController.text;
                if (email.isEmpty ||
                    name.isEmpty ||
                    num.isEmpty ||
                    pass.isEmpty ||
                    SignUp.groupValue1.isEmpty) {
                  var snackBar = SnackBar(content: Text("Field is empty"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                if (SignUp.groupValue1 == "Male") {
                  SignUp.mydata.add(Data(
                      num: num,
                      pass: pass,
                      email: email,
                      name: name,
                      gender: SignUp.groupValue1,
                      genderPic: SignUp.gender[0]));
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }
                if (SignUp.groupValue1 == "Female") {
                  SignUp.mydata.add(Data(
                      num: num,
                      pass: pass,
                      email: email,
                      name: name,
                      gender: SignUp.groupValue1,
                      genderPic: SignUp.gender[1]));
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }

                print(
                    "${SignUp.mydata[0].pass}\n${SignUp.mydata[0].email}\n${SignUp.mydata[0].num}\n${SignUp.mydata[0].name}\n${SignUp.mydata[0].gender}");
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Login()));
              });
            },
            child: Text("SignUp"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                });
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
