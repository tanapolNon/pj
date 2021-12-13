import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage.dart';
//import 'package:flutter_application_1/screen/postcategorise.dart';

// ignore: use_key_in_widget_constructors
class Createevnt extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Event",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.photo_size_select_small_outlined),
                      hintText: 'Link',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle_sharp),
                      hintText: 'Name',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.message_outlined),
                        hintText: 'Description'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.where_to_vote_sharp),
                        hintText: 'Location'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.menu_book_outlined),
                        hintText: 'interests'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orangeAccent),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  side: const BorderSide(color: Colors.green),
                                ))),
                            child: const Text("EDIT",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.right),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Home();
                              }));
                            }),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  side: const BorderSide(color: Colors.green),
                                ))),
                            child: const Text("DELETE",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.right),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Home();
                              }));
                            }),
                      ],
                    ),
                  )
                ]))));
  }
}
