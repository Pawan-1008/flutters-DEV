import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myclass27 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate21());
  }
}

class Mystate21 extends State<Myclass27> {
  String? s1 = "";
  String? s2 = "";
  read() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      s1 = sp.getString('username');
      s2 = sp.getString('password');
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Text("Welcome user $s1 $s2"),
      ),
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
  }
}
