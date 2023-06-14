import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Myclass20 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate18());
  }
}

// enum Calender { days, weeks, months }

class Mystate18 extends State<Myclass20> {
  // TextEditingController t1 = new TextEditingController();
  // TextEditingController t2 = new TextEditingController();
  // Calender s1 = Calender.days;
  String t2 = "hello world";
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: GridView.count(
            // Drawer(backgroundColor: Colors.amberAccent);
            children: [
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Image clicked",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  // color: Colors.blueAccent,
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    child: CircleAvatar(
                      radius: (207),
                      backgroundImage: AssetImage("assets/images/shri.png"),
                    ),
                    radius: 80,
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                // color: Colors.blueAccent,
                height: 200,
                width: 200,
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: (207),
                    backgroundImage: AssetImage("assets/images/two.png"),
                  ),
                  radius: 80,
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                // color: Colors.blueAccent,
                height: 200,
                width: 200,
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: (207),
                    backgroundImage: AssetImage("assets/images/warriors.png"),
                  ),
                  radius: 80,
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                // color: Colors.blueAccent,
                height: 200,
                width: 200,
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: (207),
                    backgroundImage: AssetImage("assets/images/samurai.png"),
                  ),
                  radius: 80,
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                // color: Colors.blueAccent,
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: (207),
                    backgroundImage: AssetImage("assets/images/one.png"),
                  ),
                  radius: 80,
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(9),
              //   child: Container(
              //     padding: const EdgeInsets.all(9),
              //     color: Colors.blueAccent,
              //     child: Image.asset('assets/images/two.png'),
              //   ),
              // ),
            ],
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            padding: EdgeInsets.all(20),
          ),
          appBar: AppBar(
              centerTitle: true,
              shadowColor: Colors.black,
              backgroundColor: Colors.deepOrangeAccent,
              title: Text("Demo grid")),
        )));
  }
}
