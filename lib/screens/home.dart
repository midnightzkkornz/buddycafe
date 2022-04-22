// found in the LICENSE file.
import 'package:flutter/material.dart';

import 'package:buddycafes/screens/search.dart';
import 'package:buddycafes/screens/login.dart';
// import 'package:buddycafes/screens/home.dart';

class MyHome extends StatefulWidget {

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  

  int currentIndex = 0;
  
  final screens = [
    MyMainHomePage(),
    MySearch(),
    MyLogin(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My home'),
      // ),
      body: screens[currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(()=> currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.red,
            ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.pets),
          //   label: 'Result',
          //   backgroundColor: Colors.green,
          //   ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
            backgroundColor: Colors.black,
            ),
        ],
      ),
    );
  }
}



class MyMainHomePage extends StatefulWidget {
  @override
  MyMainHomePageState createState() => MyMainHomePageState();
  }

  class MyMainHomePageState extends State<MyMainHomePage> {
    
    @override
    Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('BuddyCafe'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text('Buddy Cafe >3<" ', style: TextStyle(fontSize: 39),),
            const SizedBox(height: 10),
            Text('Pet Cafe application is the application for pet lovers.'+
            'Therefore, this application provides many pet cafes in Thailand, including dogs, rabbits, cats, etc.', style: TextStyle(fontSize: 14), textAlign: TextAlign.center,),
            const SizedBox(height: 20),

            SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset('assets/image_homepage.jpg'),
              ),
            const SizedBox(height: 10),
            SizedBox(
                height: 120,
                width: double.infinity,
                child: Image.asset('assets/location_map.jpg'),
              ),
            
            Text('Contact us at: petcafe.company@gmail.com.', style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
          ],
        ),
        
      ),
    );
  }