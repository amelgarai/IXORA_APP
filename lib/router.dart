import 'package:flutter/material.dart';
import 'package:ixorapmp_app/pages/login.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name) {
    case "/login" : 
      return MaterialPageRoute(builder: (context) => Login());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Page Name"),
          ),
          body: const Center(child: Text("Page Not found")),
        )
      );
  }
}