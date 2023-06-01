import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Myclass18 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate18());
  }
}

class Mystate18 extends State<Myclass18> {
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: (207),
                    backgroundImage: AssetImage("assets/images/samurai.png"),
                  ),
                  radius: 80,
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: t1,
                    decoration: InputDecoration(
                        labelText: "Username", border: OutlineInputBorder()),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: t2,
                    decoration: InputDecoration(
                        labelText: "Password", border: OutlineInputBorder()),
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  )),
            ],
          ),
          appBar: AppBar(
              centerTitle: true,
              shadowColor: Colors.black,
              backgroundColor: Colors.deepOrangeAccent,
              title: Text("Login User")),
        )));
  }
}
