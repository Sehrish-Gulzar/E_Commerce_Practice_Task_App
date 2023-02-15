import 'package:e_commerce_app/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Customer(),
    );
  }
}

class Customer extends StatefulWidget {
  // const Customer({Key? key, required this.title}) : super(key: key);
  // final String title;

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cellNoController = TextEditingController();
  List<Customers> listCustomer = [
    Customers(
        customerName: "Lareb",
        customerAdd: "near honda palace",
        customerNo: 030000),
    Customers(
        customerName: "Sehrish",
        customerAdd: "near allamdar chowk qasimabad",
        customerNo: 03013400000),
  ];
  update(int index) {
    nameController.text = listCustomer[index].customerName;
    addressController.text = listCustomer[index].customerAdd;
    cellNoController.text = listCustomer[index].customerNo.toString();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.black,
            child: Column(
              children: [
                Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Name:"),
                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: addressController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                          label: Text("Address:"),
                        ),
                      ),
                    )),
                Card(
                  margin: EdgeInsets.all(10),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: cellNoController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Cell No:"),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent),
                    onPressed: () {
                      // updateProducts();
                      setState(() {
                        if (nameController.text == "") {
                          if (addressController.text == "") {
                            if (cellNoController.text == "") {}
                          }
                        } else {
                          listCustomer[index].customerName =
                              nameController.text;
                          listCustomer[index].customerAdd =
                              addressController.text;
                          listCustomer[index].customerNo =
                              int.parse(cellNoController.text);
                        }
                        nameController.clear();
                        addressController.clear();
                        cellNoController.clear();
                        cellNoController.clear();
                        Navigator.pop(context);
                      });
                    },
                    child: const Text("Update"))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: ListTile(
                onLongPress: () {
                  update(index);
                },
                title: Text("Name: ${listCustomer[index].customerName} "),
                subtitle: Column(
                  children: [
                    Text("Address: ${listCustomer[index].customerAdd} "),
                    Text("Cell No: ${listCustomer[index].customerNo} "),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            title: Text("Delete"),
                            content: Text(
                                "Are you sure? You really want to delete this?"),
                            actions: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.redAccent),
                                  onPressed: () {
                                    setState(() {
                                      listCustomer.removeAt(index);
                                      Navigator.pop(context);
                                      var snackBar =
                                          SnackBar(content: Text("Deleted"));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    });
                                  },
                                  child: Text("Yes")),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.redAccent),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("No")),
                            ],
                          );
                        }),
                      );
                    });
                  },
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            );
          },
          itemCount: listCustomer.length,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    color: Colors.black,
                    child: Column(
                      children: [
                        Card(
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Name:"),
                                ),
                              ),
                            )),
                        Card(
                            margin: EdgeInsets.all(10),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                controller: addressController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  alignLabelWithHint: true,
                                  label: Text("Address:"),
                                ),
                              ),
                            )),
                        Card(
                          margin: EdgeInsets.all(10),
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: cellNoController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Cell No:"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent),
                            onPressed: () {
                              setState(() {
                                String name = nameController.text;
                                String address = addressController.text;
                                int cellNo = int.parse(cellNoController.text);
                                listCustomer.add(Customers(
                                    customerName: name,
                                    customerAdd: address,
                                    customerNo: cellNo));
                                nameController.clear();
                                addressController.clear();
                                cellNoController.clear();
                                cellNoController.clear();
                                Navigator.of(context).pop();
                              });
                            },
                            child: Text("Submit"),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
