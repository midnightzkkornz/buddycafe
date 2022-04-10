// found in the LICENSE file.
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);
  static const String id = 'register';

  @override
  MyRegisterState createState() => MyRegisterState();
}

class MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
                  Color(0xff424242),
                  Color(0xff5c5c5c),
                  Color(0xff7d7d7d),
                ]
          )
        ),

        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top:80, bottom: 30, right: 30),
              width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('Sign Up', 
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(height: 10),
                    Text('Registeration to Buddy Cafe!', 
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
            ),
            
            // the resting text... 
            Expanded(
              child:Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Colors.white, 
                ),
                padding: const EdgeInsets.only(top: 80, right: 50, left: 50),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                                blurRadius: 20,
                                spreadRadius: 5,
                                offset: const Offset(0, 10)
                          ),
                        ],
                      ),

                      child: Column(
                        children: const[
                          // Firstname
                          TextField(
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 30),
                              border: InputBorder.none,
                              hintText: 'Firstname',
                              isCollapsed: false, // check booleans
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                            ),
                          ),
                          //Divider(height: 10,),
                          Divider(color: Colors.black54, height: 2),

                          // Lastname
                          TextField(
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 30),
                              border: InputBorder.none,
                              hintText: 'Lastname',
                              isCollapsed: false, // check booleans
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                            ),
                          ),
                          Divider(color: Colors.black54, height: 2),
                          
                          // Email
                          TextField(
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 30),
                              border: InputBorder.none,
                              hintText: 'Email',
                              isCollapsed: false, // check booleans
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                            ),
                          ),
                          Divider(color: Colors.black54, height: 2),

                          // Username
                          TextField(
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 30),
                              border: InputBorder.none,
                              hintText: 'Username',
                              isCollapsed: false, // check booleans
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                            ),
                          ),
                          Divider(color: Colors.black54, height: 2),

                          // Passwords
                          TextField(
                            style: TextStyle(fontSize: 14),
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 30),
                              border: InputBorder.none,
                              hintText: 'Passwords',
                              isCollapsed: false, // check booleans
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                            ), 
                          ),
                          Divider(color: Colors.black54, height: 2),

                          // Passwords
                          TextField(
                            style: TextStyle(fontSize: 14),
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 30),
                              border: InputBorder.none,
                              hintText: 'Confirm Passwords',
                              isCollapsed: false, // check booleans
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                            ), 
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    // set register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        // button back to sign-in --> (log-in page)
                        MaterialButton(
                          onPressed: (){},
                          height: 45,
                          minWidth: 140,
                          color: Colors.green,
                          textColor: Colors.white,
                          child: const Text('Back to Sign In', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          shape: const StadiumBorder(), // curved edge
                        ),

                        MaterialButton(
                          onPressed: (){},
                          height: 45,
                          minWidth: 140,
                          color: const Color(0xff616161),
                          textColor: Colors.white,
                          child: const Text('Sign Up', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          shape: const StadiumBorder(), // curved edge
                        ),

                      ], 
                    ),
                    

                  ],
                ),
              ),

              
            ),


          ],
        ),

      ),
    );
  }
}