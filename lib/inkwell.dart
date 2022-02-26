import 'package:flutter/material.dart';

class MyInk extends StatelessWidget {
  const MyInk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inks(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Inks extends StatefulWidget {
  const Inks({Key? key}) : super(key: key);

  @override
  _InksState createState() => _InksState();
}

class _InksState extends State<Inks> {
  String inkwell = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onDoubleTap: () {
                setState(() {
                  inkwell = "Inkwell Double Tapped";
                });
              },
              onTap: () {
                setState(() {
                  inkwell = "Inkwell Tapped";
                });
              },
              child: Container(
                color: Colors.green,
                width: 120,
                height: 70,
                child: Center(
                  child: Text(
                    "InkWell",
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                inkwell,
                textScaleFactor: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
