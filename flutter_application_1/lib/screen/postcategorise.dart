//import 'package:avatar_view/avatar_view.dart';
//import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/editeventpost.dart';
import 'package:form_field_validator/form_field_validator.dart';
//import 'package:flutter_application_1/screen/addcategorise.dart';
//import 'package:flutter_application_1/screen/createeventspost.dart';
//import 'package:flutter_application_1/screen/homepage.dart';

// ignore: use_key_in_widget_constructors
class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Post",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.photo_size_select_small_outlined),
                    hintText: 'Link Photo',
                  ),
                  validator: RequiredValidator(errorText: "กรุณาใส่รูป!"),
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle_sharp),
                      hintText: 'Name',
                    ),
                    validator: RequiredValidator(errorText: "กรุณาใส่ชื่อ!")),
                TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.message_outlined),
                        hintText: 'Description'),
                    validator:
                        RequiredValidator(errorText: "กรุณาใส่คำอธิบาย!")),
                TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.where_to_vote_sharp),
                        hintText: 'Location'),
                    validator:
                        RequiredValidator(errorText: "กรุณาใส่ที่อยู่!")),
                TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.menu_book_outlined),
                        hintText: 'interests'),
                    validator:
                        RequiredValidator(errorText: "กรุณาใส่หมวดหมู่!")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.orangeAccent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                              side: const BorderSide(color: Colors.green),
                            ))),
                        child: const Text("Continue",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            textAlign: TextAlign.center),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Createevnt();
                              },
                            ));
                          }
                        }),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
