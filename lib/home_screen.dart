import 'package:flutter/material.dart';
import 'package:routing_concept/screen2.dart';
import 'package:routing_concept/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  //static final id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Routing Practice"),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen2(
                //   name: 'MScreen2',
                //   age: 22,
                // )));
                //this will work but you have to pass data from it is defined
                // Navigator.pushNamed(context, Screen2.id,);
                //Navigator.pushNamed(context,Screen2.id,
                //     arguments: {
                //   'name':'Hello',
                //   'name2':'Everyone'
                // });

                Navigator.pushNamed(context, RouteName.Screen2,
                    arguments: {'name': 'Flutter Route Practice ', 'age': 20});
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
