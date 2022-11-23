import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:profile/cart.dart';
import 'package:profile/main.dart';

void main() {
  runApp(const category());
}

class category extends StatelessWidget {
  const category({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
      body: ListView(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.shortestSide,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[350],
            ),
            child: ExpansionTile(
              title: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/tomatoes.jpg"))
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        SizedBox(height: 15),
                        Text("Tomatoes(1`KG)",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Rs 100",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.shortestSide * .15),
                    // TextButton(child: Icon(Icons.settings,color:Colors.black),onPressed: (){},),
                  ],
                ),
              ),
              children: [
                Column(
                  children: [
                    Text("Timetaken:10min"),
                    Text("Retailer:maruthi groceries"),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.shortestSide,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[350],
            ),
            child: ExpansionTile(
              title: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/tomatoes.jpg"))
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        SizedBox(height: 15),
                        Text("Tomatoes(2KG)",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Rs 150",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15)),
                      ],
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.shortestSide * .15),
                    // TextButton(child: Icon(Icons.settings,color:Colors.black),onPressed: (){},),
                  ],
                ),
              ),
              children: [
                Column(
                  children: [
                    Text("Timetaken:15min"),
                    Text("Retailer:ajay groceries"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: size.width * .945,
        height: 80,
        child: Row(
          children: [
            SizedBox(width: size.width * .04),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Icon(Icons.widgets_outlined, color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  Text("home",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            SizedBox(width: size.width * .09),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => category()));
              },
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Icon(Icons.table_rows, color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  Text("categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            SizedBox(width: size.width * .09),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Icon(Icons.person_pin, color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  Text("profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            SizedBox(width: size.width * .09),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp1()));
              },
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Icon(Icons.shopping_cart_outlined, color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
