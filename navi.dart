import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Myclass13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate13());
  }
}

class Mystate13 extends State<Myclass13> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Builder(
          builder: (context) {
            return (ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      "hello users",
                      style: TextStyle(fontSize: 20),
                    )),
                ListTile(
                  title: Text("op1"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("op1"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ));
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.app_registration), label: 'app')
          ],
          onTap: (value) {
            String s1 = "";
            if (value == 0) {
              s1 = "Home";
            } else if (value == 1) {
              s1 = "App";
            }
            Fluttertoast.showToast(
                msg: "welcome to $s1",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
        appBar: AppBar(centerTitle: true, title: Text("Navigator bar")),
      ),
    ));
  }
}
