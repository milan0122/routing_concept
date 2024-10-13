import 'package:flutter/material.dart';
import 'package:routing_concept/screen3.dart';
import 'package:routing_concept/utils/routes_name.dart';



class Screen2 extends StatefulWidget {
  //static final id = 'Screen2';
  // final String name;
  // final int age;

  // const Screen2({super.key, required this.name,this.age=20});


  dynamic data;

  Screen2({super.key, required this.data});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override

  Widget build(BuildContext context) {
    //final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
         //title: Text("Screen 2"),
          // pass data through the routing concept
          // title: Text(widget.name.toString())
          //title: Text(arguments['name']+' '+arguments['name2']),

          title: Text(widget.data['name']),
          backgroundColor: Colors.redAccent,
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen3()
                  // name: 'MScreen3',
                  // number: 29,
                  //name: arguments['name'] ));
                Navigator.pushNamed(context, RouteName.Screen3);

              },
              child: Center(
                child: Container(
                  height: 60,
                  width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius:  BorderRadius.circular(12)),

                        child: Center(child: Text('Screen 3')),)

              ),
            )
          ],

        )
    );
  }
}
