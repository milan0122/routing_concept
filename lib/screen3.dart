import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  //static final id = 'Screen3';
  // final String name;
  // final int? number;
  //const Screen3({super.key, required this.name,  this.number});

  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         // title: Text(widget.name.toString()+" "+ widget.number.toString()),
          title: Text("Screen3"),
          backgroundColor: Colors.redAccent,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(child: Text('Screen 2')),
                ),
              ),
            )
          ],
        ));
  }
}
