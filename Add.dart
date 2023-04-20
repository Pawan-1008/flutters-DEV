import 'package:flutter/material.dart';

class Myclass7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (Mystate1());
  }
}

class Mystate1 extends State<Myclass7> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  var t3 = TextEditingController();
  int a = 10, b = 0, c = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: t1,
                  decoration: InputDecoration(
                      labelText: 'Enter number 1',
                      border: OutlineInputBorder()),
                )),
            Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: t2,
                  decoration: InputDecoration(
                      labelText: 'Enter number 2',
                      border: OutlineInputBorder()),
                )),
            Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: t3,
                  decoration: InputDecoration(
                      labelText: 'Addition', border: OutlineInputBorder()),
                )),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    a = int.parse(t1.text);
                    b = int.parse(t2.text);
                    c = a + b;
                    t3.text = c.toString();
                  });
                },
                child: Text("add"),
              ),
            ),
          ],
        ),
        appBar: AppBar(title: Text("Add")),
      ),
    ));
  }
}
