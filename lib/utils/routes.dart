import 'package:flutter/material.dart';
import 'package:routing_concept/home_screen.dart';
import 'package:routing_concept/screen2.dart';
import 'package:routing_concept/screen3.dart';
import 'package:routing_concept/utils/routes_name.dart';
class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_)=>HomeScreen());
      case RouteName.Screen2:
        return MaterialPageRoute(builder: (_)=>Screen2(data: settings.arguments as Map,));
      case RouteName.Screen3:
        return MaterialPageRoute(builder: (_)=>Screen3());
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Text('Routing Error !!!!'),
          );
        });
    }
  }
}