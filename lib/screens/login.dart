// found in the LICENSE file.
import 'package:buddycafes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:buddycafes/screens/register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
  static const String id = 'login'; // set strings 

  @override
  MyLoginState createState() => MyLoginState();
}

class MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [ // change chades 
                  Colors.green.shade600,
                  Colors.green.shade400,
                  Colors.green.shade100,
                ]
          ),
        ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          // ------------------------------ Login parts ------------------------------
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const[
                Text("Sign In",
                  style: TextStyle(color: Colors.white,fontSize: 35),
                  ),
                SizedBox(height: 15),
                Text("Welcome Back to Buddy Cafe!",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ],
            ),
          ),
          
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      /// Text Fields
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    blurRadius: 20,
                                    spreadRadius: 10,
                                    offset: const Offset(0, 10)
                                ),
                              ]
                          ),

                          // ------------------------------ check fields username and passwords ------------------------------   
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              // usernames
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
                            
                            // black lines
                            Divider(color: Colors.black54, height: 2),

                            // passwords
                            TextField(
                                style: TextStyle(fontSize: 14),
                                obscureText: true,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                              ),

                            ],
                            
                          ),
                      ),   

                      // ------------------------- forgot passwords text! ------------------------- 
                      Padding(
                        padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
                        child: RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            text: '',
                              style:  const TextStyle(fontSize: 14, color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(text: 'Forgot Passwords?',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.cyan),
                                  recognizer: TapGestureRecognizer()..onTap = (){
                                    print('Hash tag #tag');
                                    // fireToast2("Terms & Conditions Hash Tag");
                                  }
                                ),
                              ],
                          ),
                        ),
                      ),


                      // login button!
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // register
                          MaterialButton(
                              onPressed: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MyRegister()),);
                              },
                              height: 45,
                              minWidth: 140,
                              child: const Text('Register', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              textColor: Colors.white,
                              color: Colors.grey,
                              shape: const StadiumBorder(),
                            ),
                          
                          // login
                          MaterialButton(
                              onPressed: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MyHome()),);
                              },
                              height: 45,
                              minWidth: 140,
                              child: const Text('Login', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              textColor: Colors.white,
                              color: Colors.green,
                              shape: const StadiumBorder(),
                            ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      
                      // const Text("By logging in you are agree with our Terms & Conditions and Privacy Policy ", 
                      //   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                      // ),

                      // license checking ----------- >> 
                      Padding(
                        padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'By logging in you are agree with our',
                              style:  const TextStyle(fontSize: 14, color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(text: ' Terms & Conditions ',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.cyan),
                                  recognizer: TapGestureRecognizer()..onTap = (){
                                    print('Hash tag #tag');
                                    // fireToast2("Terms & Conditions Hash Tag");
                                  }
                                ),

                                // checking "and"
                                const TextSpan(text: ' and '),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.cyan),
                                  recognizer: TapGestureRecognizer()..onTap = (){
                                    print('Hash tag #tag ');
                                    // fireToast2("Privacy Policy Hash Tag");
                                  }
                                ),
                              ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),

            ),
          ),

        ],
      ),

      ),
    );
  }
}
