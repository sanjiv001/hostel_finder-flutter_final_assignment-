import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2-27,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 3, 101, 63) ),
              )
            ],
          ),
        )
      ],
    );
  }
}
