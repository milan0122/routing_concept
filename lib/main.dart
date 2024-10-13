import 'package:flutter/material.dart';
import 'package:routing_concept/home_screen.dart';
import 'package:routing_concept/screen2.dart';
import 'package:routing_concept/screen3.dart';
import 'package:routing_concept/utils/routes_name.dart';
import 'package:routing_concept/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomeScreen(),

       //initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id :(context)=>HomeScreen(),
      //   //Screen2.id : (context)=> Screen2(name: 'Milan'),
      //   Screen2.id : (context)=> Screen2(),
      //   Screen3.id :(context)=> Screen3(name: 'Prasoon', number: 22)

      //},

      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,

    );
  }
}
