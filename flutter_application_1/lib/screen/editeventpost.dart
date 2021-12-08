import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage.dart';
//import 'package:flutter_application_1/screen/postcategorise.dart';

class Createevnt extends StatelessWidget {
  const Createevnt({Key? key}) : super(key: key);

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
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Center(child: Image.asset('assets/images/vo4.png')),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Link Photo"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Event Name"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Descripton"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Location"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "interests"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: const Text("EDIT",
                          style: TextStyle(fontSize: 20, color: Colors.black),
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
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                            side: const BorderSide(color: Colors.green),
                          ))),
                      child: const Text("DELETE",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          textAlign: TextAlign.right),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Home();
                        }));
                      }),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
