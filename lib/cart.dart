import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:profile/placeorder.dart';

import 'main.dart';

void main() => runApp(MaterialApp(
      home: MyApp1(),
    ));

class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  //const MyApp({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp1()));
          },
        ),
        title: Text('Cart'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  width: size.width,
                  height: size.height / 7,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 20, 20),

                    // color:Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                          child: Container(
                            width: size.width / 2,
                            height: size.height,
                            child: Text(
                              'Deliver to',
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            width: size.width,
                            height: size.height,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(65, 5, 0, 5),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Change',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  color: Colors.lightGreen[200],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 7,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('Add more to Cart'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 19,
                child: Container(
                  child: Card(
                    child: FutureBuilder(
                        future: loadUserList(),
                        builder: (context, snapshot) {
                          if (_users.length == null) {
                            return Container(
                              child: Center(
                                child: Text("loading"),
                              ),
                            );
                          } else {
                            var noOfItems = List<int>.filled(_users.length, 0);
                            return ListView.builder(
                              itemCount: _users.length,
                              itemBuilder: (context, i) {
                                return ListTile(
                                  leading: Image.network(_users[i]['image']),
                                  trailing: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: SizedBox(
                                      height: 50,
                                      width: 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    // noOfItems[i] += 1;
                                                    print(1);
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 0, 0),
                                                  child: Text('+'),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Container(
                                              child: Text("1"),
                                            ),
                                          ),
                                          Flexible(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    //noOfItems[i] -= 1;
                                                  });
                                                },
                                                child: Text('- '),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  title: Text(_users[i]['firstName']),
                                  subtitle: Text('Quantity\nPrice'),
                                  isThreeLine: true,
                                  onTap: () {},
                                  onLongPress: () {},
                                );
                              },
                            );
                          }
                        }),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          //flex:7,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text('1000 \nTotal'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 175,
                        ),
                        Flexible(
                          //flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                              ),
                              child: TextButton(
                                child: Text(
                                  'Place Order',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => placeorder(
                                                _users,
                                                value: [],
                                              )));
                                  loadUserList();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blue, ////NAVIGATION BAR////
                  //child:Text('NAVIGATE'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class User {
  final String name;
  User(this.name);
}
