import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/cart.dart';
import 'package:profile/category.dart';
import 'package:profile/editprofile.dart';
import 'package:profile/editprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profile(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class profile extends StatelessWidget {
  profile({super.key});

  var name = 'ashlesh shenoy';
  var phone = "6361284091";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                color: Color.fromARGB(255, 219, 215, 215),
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.longestSide * .21,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text("Hey",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        SizedBox(width: 3),
                        Icon(
                          Icons.back_hand,
                          color: Color.fromARGB(255, 223, 168, 87),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "${name}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text("+91 ${phone}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            )),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * .94,
              child: Row(
                children: [
                  SizedBox(width: size.width * .001),
                  Text("Account settings",
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 122, 122),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ))
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => editprofile()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_pin,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Edit profile",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Orders",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.map_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Saved Addresses",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Language",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Notification Settings",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: size.width * .94,
              child: Row(
                children: [
                  SizedBox(width: size.width * .001),
                  Text("Customer support",
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 122, 122),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ))
                ],
              ),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.title_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Terms & conditions",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Browse FAQs",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(
                  width: size.width * .03,
                ),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Contact us",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18,
                              ))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(width: size.width * .028),
                Container(
                    alignment: Alignment.center,
                    width: size.width * .945,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Log out",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )))),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   width: size.width * .945,
      //   height: 80,
      //   child: Row(
      //     children: [
      //       SizedBox(width: size.width * .04),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           children: [
      //             SizedBox(height: 6),
      //             Icon(Icons.widgets_outlined, color: Colors.black),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Text("home",
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.bold,
      //                 ))
      //           ],
      //         ),
      //       ),
      //       SizedBox(width: size.width * .09),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           children: [
      //             SizedBox(height: 6),
      //             Icon(Icons.table_rows, color: Colors.black),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Text("categories",
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.bold,
      //                 ))
      //           ],
      //         ),
      //       ),
      //       SizedBox(width: size.width * .09),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           children: [
      //             SizedBox(height: 6),
      //             Icon(Icons.person_pin, color: Colors.black),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Text("profile",
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.bold,
      //                 ))
      //           ],
      //         ),
      //       ),
      //       SizedBox(width: size.width * .09),
      //       TextButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => MyApp1()));
      //         },
      //         child: Column(
      //           children: [
      //             SizedBox(height: 6),
      //             Icon(Icons.shopping_cart_outlined, color: Colors.black),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Text("Cart",
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.bold,
      //                 ))
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(0.5),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
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
            ),
            Padding(
                padding: EdgeInsets.all(1.0),
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
                padding: EdgeInsets.all(1.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profile()));
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
                padding: EdgeInsets.all(1.0),
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
    );
  }
}
