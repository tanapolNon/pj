// ignore_for_file: prefer_const_constructors

//import 'package:avatar_view/avatar_view.dart';
//import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/editeventpost.dart';
//import 'package:flutter_application_1/screen/addcategorise.dart';
//import 'package:flutter_application_1/screen/createeventspost.dart';
//import 'package:flutter_application_1/screen/homepage.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
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
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Link Photo"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Event Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Descripton"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Location"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "interests"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orangeAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1),
                          side: const BorderSide(color: Colors.green),
                        ))),
                    child: const Text("Continue",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        textAlign: TextAlign.center),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Createevnt();
                      }));
                    }),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
