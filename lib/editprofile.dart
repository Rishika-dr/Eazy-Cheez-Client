import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:profile/main.dart';
import 'package:profile/otppage.dart';

class editprofile extends StatelessWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Update Profile',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => profile()));
          },
        ),
        backgroundColor: Color.fromRGBO(96, 173, 8, 0.922),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height / 140,
            width: size.width,
            color: Color.fromARGB(255, 121, 185, 47),
          ),
          Container(
            height: size.height / 5,
            width: size.width,
            color: Color.fromRGBO(96, 173, 8, 0.922),
            padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
            child: Text(
              'Hey 🖐️ Ashlesh Shenoy',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(color: Color.fromARGB(230, 0, 0, 0)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'enter the name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 0))),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Phone no',
                  style: TextStyle(color: Color.fromARGB(230, 0, 0, 0)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '  +91 7892675177',
                    suffixIcon: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => otppage()));
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(80, 5, 210, 1),
                              fontWeight: FontWeight.bold),
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
