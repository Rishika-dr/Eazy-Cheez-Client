import 'package:flutter/material.dart';
import 'package:profile/cart.dart';

class placeorder extends StatelessWidget {
  //const placeorder({Key? key}) : super(key: key);
  List<dynamic> _users = [];
  placeorder(this._users, {required List value});
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
          title: Text(
            'Confirmation',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Deliver to :',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Text(
                      'Home ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                )),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Pricing details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'item 1',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                            ),
                            Text(
                              '20',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'item 2',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                            ),
                            Text(
                              '30',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'item 3',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                            ),
                            Text(
                              '20',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'item 4',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 290,
                            ),
                            Text(
                              '100',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery charges',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 230,
                            ),
                            Text(
                              '0',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Divider(
                          height: 10,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Color.fromARGB(255, 136, 133, 133),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total amount',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 235,
                            ),
                            Text(
                              '170',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Divider(
                          height: 10,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Color.fromARGB(255, 136, 133, 133),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '3Affcs',
                      style: TextStyle(
                          fontSize: 40,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Enter the Captcha to confirm the order',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 158, 158, 158)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(135, 0, 135, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Color.fromARGB(255, 237, 165, 9),
                      ),
                      child: TextButton(
                        onPressed: () {
                          print(_users);
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 247, 243, 243)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Divider(
                        height: 10,
                        indent: 0,
                        endIndent: 0,
                        color: Color.fromARGB(255, 136, 133, 133),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Stack(
            //   children: [
            //     Positioned(
            //       child: Container(
            //         height: size.height / 17,
            //         width: size.width / 5,
            //         child: Column(
            //           children: [
            //             Icon(
            //               Icons.home_filled,
            //               size: 23,
            //             ),
            //             SizedBox(
            //               height: 2,
            //             ),
            //             Text('Home')
            //           ],
            //         ),
            //       ),
            //     ),
            //     Container(
            //       height: size.height / 17,
            //       width: size.width / 1.3,
            //       child: Column(
            //         children: [
            //           Icon(
            //             Icons.window_rounded,
            //             size: 23,
            //           ),
            //           SizedBox(height: 2),
            //           Text('Categories')
            //         ],
            //       ),
            //     ),
            //     Positioned(
            //       child: Container(
            //         padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
            //         child: Column(
            //           children: [
            //             Icon(
            //               Icons.person_outlined,
            //               size: 24,
            //             ),
            //             SizedBox(
            //               height: 2,
            //             ),
            //             Text('Profile')
            //           ],
            //         ),
            //       ),
            //     ),
            //     Positioned(
            //       child: Container(
            //         padding: EdgeInsets.fromLTRB(350, 0, 0, 0),
            //         child: Column(
            //           children: [
            //             Icon(
            //               Icons.shopping_cart,
            //               size: 24,
            //             ),
            //             SizedBox(
            //               height: 2,
            //             ),
            //             Text('Cart')
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ]),
        ));
  }
}
