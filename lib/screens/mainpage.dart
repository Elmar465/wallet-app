// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_trainig/screens/secondPage.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';



class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xff4286f4),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff373B44), Color(0xff4286f4)]
             )
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 400.0,
                  height: 550.0,
                  child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_dehufm3f.json",),
                ),
                Center(
                  child: Expanded(
                    child: Container(
                      // height: 50.0,
                      // width: 400.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(40.0),
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff373B44)),
                          overlayColor: MaterialStateProperty.all(Color(0xff4286f4)),
                          foregroundColor: MaterialStateProperty.all(Color(0xff4286f4)),
                          fixedSize: MaterialStateProperty.all(Size(300.0, 50.0)),
                          shadowColor: MaterialStateProperty.all<Color>(Color(0xff373B44)),
                          side: MaterialStateProperty.all(BorderSide(color: Color(0xff373B44),)), 
                        ),
                        autofocus: true,
                        child: Text("Next Step", style:GoogleFonts.bebasNeue(fontSize: 30.0, letterSpacing: 10.0,) ,),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      );

  }
}