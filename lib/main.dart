import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/cart.dart';
import 'package:http/http.dart' as http;
import 'package:profile/category.dart';
import 'package:profile/editprofile.dart';
import 'package:profile/editprofile.dart';

void main() => runApp(MaterialApp(
      home: profile(),
    ));

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _MyAppState1();
}

class _MyAppState1 extends State<profile> {
  var name;
  var phone;
  var url = Uri.parse('http://192.168.43.41:8000/api/profile');
  var headers = {
    "authtoken":
        "eyJhbGciOiJSUzI1NiIsImtpZCI6ImY4MDljZmYxMTZlNWJhNzQwNzQ1YmZlZGE1OGUxNmU4MmYzZmQ4MDUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vcGhvbmUtZmlyZWJhc2UtZTZhZTAiLCJhdWQiOiJwaG9uZS1maXJlYmFzZS1lNmFlMCIsImF1dGhfdGltZSI6MTY2OTEyOTM2MCwidXNlcl9pZCI6ImVRb1g3U2FUN1ZoQllobkU1RXlVVmtPMEl6bjEiLCJzdWIiOiJlUW9YN1NhVDdWaEJZaG5FNUV5VVZrTzBJem4xIiwiaWF0IjoxNjY5MTI5MzYwLCJleHAiOjE2NjkxMzI5NjAsInBob25lX251bWJlciI6Iis5MTkxMTA2Nzg4MzEiLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7InBob25lIjpbIis5MTkxMTA2Nzg4MzEiXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwaG9uZSJ9fQ.f_JDP7yDsmFuGLZSeFuwmfGwuPhk_4xTwT7DssSFh58yAOhoxBJpnfFps0gllzcI7dPtt_YD_ygbKXQ6LeUbtDeq_00lza7fscArjD1icJ08REvGnC_ZozpZ8Y4yMZLIGX9GAwFGSa8HPtri1pRJ-CnFK-yz5h9FkD4BSfAxPrutGG52PKoUOiMhApt1uhJyd6zdL6d_4_SrOXiOzsVMM2TihK5kjioSPAIxCq_aBuE65aX7I_Yqmz6TGwxbbyasTlSDhUg4XqmXvD0qlD2DPFKHLjIqOLdnDyne3iv9TaCNHfKR7ea7sZKCSJpMqUFcNKpxIWyXJw3NMex0cmzcNw",
  };
  // //const MyApp({Key? key}) : super(key: key);
  Future<void> getdata() async {
    var future = await http.get(url, headers: headers);
    var responseData = json.decode(future.body);
    print(responseData['uid']);
    name = responseData['username'];
    phone = responseData['phone'];
  }
  // Future loadUserList() async {
  //   String url = '127.0.0.1:8000/api/profile';
  //   var res = await http.get(Uri.http(url), headers: {
  //     'authtoken':
  //         'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ3YjE5MTI0MGZjZmYzMDdkYzQ3NTg1OWEyYmUzNzgzZGMxYWY4OWYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vcGhvbmUtZmlyZWJhc2UtZTZhZTAiLCJhdWQiOiJwaG9uZS1maXJlYmFzZS1lNmFlMCIsImF1dGhfdGltZSI6MTY2ODUzMzYwNCwidXNlcl9pZCI6ImRmQjllcjAzQ1lZVE85aUJMakhXV2Z6RlZ4ODIiLCJzdWIiOiJkZkI5ZXIwM0NZWVRPOWlCTGpIV1dmekZWeDgyIiwiaWF0IjoxNjY4NTMzNjA0LCJleHAiOjE2Njg1MzcyMDQsInBob25lX251bWJlciI6Iis5MTYzNjIwOTg2MDYiLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7InBob25lIjpbIis5MTYzNjIwOTg2MDYiXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwaG9uZSJ9fQ.BMKyCpD6nDRmpeCL1jJJlk5KEl6OhkmQUBidm7xFNBXpORZUuL5anApKZuoM3vcUuo2AfVHRcfqKXHOfFDgz_LhCeo1DO5_cctRtCeo5Q8gxCOGgMd9KpY6CSA4Fd9MpbbURylG6j7vQC-rmChMVigZsM3vH-9zdot-1mTdM2OA8fKUZLi1dLMb_sMMKSkeU0Yx9vFAV2yjIHyVlTCg835_GiDG4vhVl8bp5dasiZWD3KJBwYpYmwlgANgOBTE2zjmqGguTY_hk2osPoXLFYZo1SuMXN8QvVXTzRvU5AB52aTF20y5ABn-Uwf0RBStyoCnt3cxSNLjZK65N8oqefeA'
  //   });
  //   if (res.statusCode == 200) {
  //     var jsonData = jsonDecode(res.body);
  //     print(jsonData);
  //   } else {
  //     print("error");

  //   }
  //}

  // final String baseUrl = "http://127.0.0.1:8000";
  // Future getHttp() async {
  //   final Dio dio = new Dio();
  //   try {
  //     var response = await dio.get(
  //       "$baseUrl/api/profile",
  //       options: Options(
  //         headers: {
  //           "authtoken":
  //               "eyJhbGciOiJSUzI1NiIsImtpZCI6ImY4MDljZmYxMTZlNWJhNzQwNzQ1YmZlZGE1OGUxNmU4MmYzZmQ4MDUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vcGhvbmUtZmlyZWJhc2UtZTZhZTAiLCJhdWQiOiJwaG9uZS1maXJlYmFzZS1lNmFlMCIsImF1dGhfdGltZSI6MTY2ODY3MjU4MCwidXNlcl9pZCI6ImVRb1g3U2FUN1ZoQllobkU1RXlVVmtPMEl6bjEiLCJzdWIiOiJlUW9YN1NhVDdWaEJZaG5FNUV5VVZrTzBJem4xIiwiaWF0IjoxNjY4NjcyNTgwLCJleHAiOjE2Njg2NzYxODAsInBob25lX251bWJlciI6Iis5MTkxMTA2Nzg4MzEiLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7InBob25lIjpbIis5MTkxMTA2Nzg4MzEiXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwaG9uZSJ9fQ.CNzMb4PZWUaqsTQ-L_TCRmJuEvulsPPnBW_mcFD-kj7OuFNqLnlwYqglVSpv1tZvjEBsscFy4K-DqtY8B8nZbF26I5NgLASOQCYjZqgDC9fwCs_gXAn0CtK8X2PIiYp1bcEog85e2OkG6gWK8eVZLNPmyMl2g2DjPiQ97lhTXdx5WOQxcuKAV2fa3-ugcakPdluZ9H0PK_RabGt6mEVOs-x6onHHU5XWZGnROI3Re9PHy9EPM46MAcY_XJBfH6-JdiR_ssWdx2Lsyc75se-SFo8cyfJirodJIcJzPtOjnxc_6Tccgeo9UneQLbnggq_hjc9bC5utnKkJ2eXP8Fxdog"
  //         },
  //       ),
  //     );
  //     print(response.statusCode);
  //     print(response.data);
  //   } catch (e) {
  //     print(e);
  //   }
  //}

  List<dynamic> _users = [];
  // var name=name1;

  @override
  Widget build(BuildContext context) {
    //loadUserList();
    getdata();
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
                          name,
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
                        Text("+91" + phone,
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
