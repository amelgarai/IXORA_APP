import 'package:flutter/material.dart';
import 'package:ixorapmp_app/alerts/alert.dart';
import 'package:ixorapmp_app/pages/login.dart';
import 'package:ixorapmp_app/router.dart';



void main() async{
  
  
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp(page: Login(),));
}

class MyApp extends StatefulWidget {
  final Widget? page;
  const MyApp({Key? key, this.page}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: navigatorKey,
        onGenerateRoute: generateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: widget.page,
      ),
     onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}