import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myclass26 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate20());
  }
}

class Mystate20 extends State<Myclass26> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  // var t3 = TextEditingController();
  String s1 = "";

  save(String un, String pass) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("username", un);
    sp.setString("password", pass);
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Column(
          children: [
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
                onPressed: () {
                  var un = t1.text;
                  var pass = t2.text;
                  save(un, pass);
                  Navigator.pushNamed(context, '/Second');
                },
                child: Text('login'))
          ],
        ),
        appBar: AppBar(
          title: Text("Main page"),
        )));
  }
}
