import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:profile/main.dart';
import 'package:http/http.dart' as http;

import 'cart.dart';
import 'editprofile.dart';

void main() {
  runApp(const category());
}

class category extends StatelessWidget {
  const category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home1(),
    );
  }
}

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List<dynamic> _users = [];
  Future loadUserList() async {
    var res = await http.get(Uri.https("dummyjson.com", "users"));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      if (jsonData['users'].isNotEmpty) {
        setState(() {
          _users = jsonData['users'];
        });
      }
    }
  }

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    loadUserList();
    // This method is rerun every time setState is called, for instance as done.
    // by the _incrementCounter method above.
    // The Flutter framework has been optimized to make rerunning build methods.
    // fast, so that you can just rebuild anything that needs updating rather.
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.green,
        title: Column(
          children: [
            Row(
              children: [
                Text("EAZY",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500)),
                Text("CHEEZ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                SizedBox(width: size.shortestSide * .58),
                Container(
                    width: 20,
                    child: TextButton(
                      child:
                          Icon(Icons.notifications_none, color: Colors.white),
                      onPressed: () {},
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.shortestSide * .002,
                      MediaQuery.of(context).size.longestSide * .002,
                      MediaQuery.of(context).size.shortestSide * .0,
                      MediaQuery.of(context).size.longestSide * .002),
                  width: MediaQuery.of(context).size.shortestSide * .92,
                  height: 50,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '  Search for 500+ grocery products',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: ((context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(_users[index]['image']),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_users[index]['firstName']),
                      Text(_users[index]['email']),
                      Text(_users[index]['phone']),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: EdgeInsets.all(4),
                child: Column(children: [
                  Icon(Icons.widgets_outlined, color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  Text("home",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))
                ])),
            Padding(
                padding: EdgeInsets.all(4),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => category()));
                    },
                    child: Column(children: [
                      Icon(Icons.table_rows, color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      Text("categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))
                    ]))),
            Padding(
                padding: EdgeInsets.all(4),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Column(children: [
                      Icon(Icons.person_pin, color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      Text("profile",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))
                    ]))),
            Padding(
                padding: EdgeInsets.all(4),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp1()));
                    },
                    child: Column(children: [
                      Icon(Icons.shopping_cart_outlined, color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Cart",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))
                    ]))),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
