import 'package:flutter/material.dart';

class Myclass9 extends StatefulWidget {
  Color c = Colors.amberAccent;
  @override
  State<StatefulWidget> createState() {
    return (Mystate9());
  }
}

class Mystate9 extends State<Myclass9> {
  var t1 = TextEditingController();
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(40),
                child: TextField(
                  enabled: false,
                  textDirection: TextDirection.rtl,
                  controller: t1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(Icons.arrow_circle_left_outlined),
                      label: Text(""))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '0';
                        });
                      },
                      child: Text("0")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '1';
                        });
                      },
                      child: Text("1")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '2';
                        });
                      },
                      child: Text("2")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '3';
                        });
                      },
                      child: Text("3")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '4';
                        });
                      },
                      child: Text("4")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '5';
                        });
                      },
                      child: Text("5")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '6';
                        });
                      },
                      child: Text("6")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '7';
                        });
                      },
                      child: Text("7")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text = t1.text + '8';
                        });
                      },
                      child: Text("8")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            t1.text = t1.text + '9';
                          });
                        },
                        child: Text("9")),
                  ),
                  Container(
                    padding: EdgeInsets.all(38),
                    width: 204,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (t1.text.contains("+")) {
                            var ls = t1.text.split("+");
                            var a = int.parse(ls[0]);
                            var b = int.parse(ls[1]);
                            var c = a + b;
                            t1.text = c.toString();
                          }
                          if (t1.text.contains("-")) {
                            var ls = t1.text.split("-");
                            var a = int.parse(ls[0]);
                            var b = int.parse(ls[1]);
                            var c = a - b;
                            t1.text = c.toString();
                          }
                          if (t1.text.contains("*")) {
                            var ls = t1.text.split("*");
                            var a = int.parse(ls[0]);
                            var b = int.parse(ls[1]);
                            var c = a * b;
                            t1.text = c.toString();
                          }
                        });
                      },
                      child: Text("="),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text += "+";
                          a = int.parse(t1.text);
                        });
                      },
                      child: Text("+")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text += "-";
                          a = int.parse(t1.text);
                        });
                      },
                      child: Text("-")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.text += "*";
                          // a = int.parse(t1.text);+
                        });
                      },
                      child: Text("*"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          t1.clear();
                        });
                      },
                      child: Text("C"))
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Calculator"),
        ),
      ),
    ));
  }
}
