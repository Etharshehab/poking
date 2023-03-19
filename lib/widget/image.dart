import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(left: 100, top: 150, right: 100),
              height: 300,
              width: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/1.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            ),
          ),
          Positioned(
            top: -70,
            left: -70,
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 100, right: 100),
              height: 300,
              width: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/2.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
