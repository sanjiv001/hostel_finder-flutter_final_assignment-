import 'package:flutter/material.dart';
import 'package:hostel_finder/screens/home_body.dart';
// import 'package:hostel_finder/screens/home_screen.dart';

void main(List<String> args) {
  runApp(const Hostelfinder());
}

class Hostelfinder extends StatelessWidget {
  const Hostelfinder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeBody(),
      
    );
  }
}
