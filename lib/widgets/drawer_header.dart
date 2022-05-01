// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

class Mydrawerheader extends StatefulWidget {
  const Mydrawerheader({Key? key}) : super(key: key);

  @override
  State<Mydrawerheader> createState() => _MydrawerheaderState();
}

class _MydrawerheaderState extends State<Mydrawerheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 5, 77, 11),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),),
            ),
          ),
          const Text("Hostel Finder", style: TextStyle(color: Colors.white, fontSize: 35),),
          const Text("sanjiv0001@gmail.com", style: TextStyle(color: Colors.white, fontSize: 20),),
          // const Text("Favourite", style: TextStyle(color: Colors.white, fontSize: 20),),
          // const Text("Location", style: TextStyle(color: Colors.white, fontSize: 20),),
          // const Text("Settings", style: TextStyle(color: Colors.white, fontSize: 20),),
          // const Text("Log Out", style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
    );
  }
}
