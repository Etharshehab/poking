import 'package:flutter/material.dart';

import 'home.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 100, top: 150, right: 100),
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
                  margin:
                      const EdgeInsets.only(top: 150, left: 100, right: 100),
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
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 70, right: 70),
            child: const Text(
              'Travel with ease',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            child: const Text('Get Started'),
          )
        ],
      ),
    );
  }
}
