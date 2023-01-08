import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_trainig/screens/adminPage.dart';
import 'package:lottie/lottie.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

final _emailcontroller = TextEditingController();
final _passwordcontroller = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(        // ignore: prefer_const_constructors
        child: Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(            // ignore: prefer_const_constructors
            // ignore: prefer_const_constructors
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [Color(0xff0f0c29), Color(0xff302b63), Color(0xff24243e)]
            )
          ),
          
          child: Center(
            child: SingleChildScrollView(              
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.network("https://assets4.lottiefiles.com/packages/lf20_KvK0ZJBQzu.json"),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                 ),
               ), 
               // ignore: prefer_const_constructors
               SizedBox(height: 20.0,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: TextField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  obscureText:true
                 ),
               ),
               // ignore: prefer_const_constructors
               SizedBox(height: 15,),
               ElevatedButton(
                autofocus:true,
                child: Text("Login"),
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminPage()));
                },
               ) 
              ]
            ),
          )
        ),     
              )
               
        
        )
        
      );
    
    
  }

  Center button(BuildContext context) {
    return Center(
      child: ElevatedButton(
        autofocus: true,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(""),
      ),
    );
  }
}

