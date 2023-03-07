import 'package:flutter/material.dart';
import 'package:leads/screens/dashBoard_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:leads/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
     // double height= MediaQuery.of(context).size.height;
     // double width=MediaQuery.of(context).size.width;
      return Scaffold(
        body:
             Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png',height: 250,width: 300,),
                    Container(
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          // if(Responsive.isMobile(context))
                          //   Image.asset('assets/images/logo.png',width: 100,height: 100,),
                          // SizedBox(
                          //   height: height*0.145,
                          // ),
                          RichText(
                              text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                      fontSize: 25,
                                    )
                                ),
                              ]
                          )
                          ),
                          SizedBox(
                            height:25,
                          ),
                          Text('Email',style: TextStyle(fontSize: 20),),
                          SizedBox(
                            height:15,
                          ),
                          Container(
                            height: 40.0,
                            width: MediaQuery.of(context).size.width/3.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email_outlined),
                                hintText: 'Enter Email',

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text('Password',style: TextStyle(fontSize: 19),),
                          SizedBox(
                            height:10,
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width/3.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,

                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock_outline),
                                hintText: 'Enter password',
                              ),
                              obscureText: true,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardScreen()),);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                      colors: [
                                        // Colors.black26,
                                        // Colors.black38
                                        Colors.indigoAccent.shade200,
                                        Colors.purpleAccent.shade100,

                                      ]
                                  )
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text('Login',style: TextStyle(fontSize: 20,),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                 ]
                ),
              ),

      );
  }
}
