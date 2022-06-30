import 'package:flutter/material.dart';
import "package:fluttertoast/fluttertoast.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Personal(),
    ),
  );
}

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);


  @override
  State<Personal> createState() => _PersonalState();
}
shw(){

  Fluttertoast.showToast(
      msg: "Team created!!!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
const String name = "Alex";
const String email = "alex123@gmail.com";

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black87, Colors.grey.shade700],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.4, 0.6],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.38,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/coffe.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                 const Padding(

                  padding: EdgeInsets.only(top: 95),
                  child: Text(
                    "$name \n$email",

                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.green,fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              width: width,
              height: height * 0.10,
              child:  const ListTile(
                leading: Icon(
                  Icons.insert_drive_file_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Personal Info',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                   onTap:  shw,
              ),
            ),
            Container(
              width: width,
              height: height * 0.10,
              child: const ListTile(
                leading: Icon(
                  Icons.add_box_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  'Coupons',
                  style: TextStyle(color: Colors.white),
                ),
                onTap:  shw,
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            Container(
              width: width,
              height: height * 0.10,
              child: const ListTile(
                leading: Icon(
                  Icons.payment_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'Paymont Method',
                  style: TextStyle(color: Colors.white),
                ),
                onTap:  shw,
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            Container(
              width: width,
              height: height * 0.10,
              child: const ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                onTap:  shw,
                title: Text(
                  'Call Center',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            Container(
              width: width,
              height: height * 0.10,
              child: const ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onTap:  shw,
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            Container(
              width: width,
              height: height * 0.10,
              child: const ListTile(
                leading: Icon(
                  Icons.gif_box,
                  color: Colors.white,
                ),
                onTap:  shw,
                title: Text(
                  'Tell us what you like',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            Container(
              width: width,
              height: height * 0.10,
              child: const ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onTap:  shw,
                title: Text(
                  'Log out',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
