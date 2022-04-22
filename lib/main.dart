// check import ! 
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:buddycafes/common/theme.dart';

import 'package:buddycafes/screens/home.dart';
import 'package:buddycafes/screens/login.dart';
import 'package:buddycafes/screens/register.dart';
import 'package:buddycafes/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Using Multi-Provider is convenient when providing multiple objects.
    return MaterialApp(  
      title: 'Buddycafe Demo',
      theme: appTheme,
      //initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      home: MyHome(), 
      routes: {
        // change route to "change pages"
        '/home': (context) => MyHome(),
        '/login': (context) => const MyLogin(),
        '/register': (context) => const MyRegister(),
        '/search': (context) => MySearch(),
      },
      
    );
  }

}