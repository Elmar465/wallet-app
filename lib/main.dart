import 'package:flutter/material.dart';
import 'package:flutter_trainig/screens/mainpage.dart';
import 'package:lottie/lottie.dart';


main(){
  // ignore: prefer_const_constructors
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}