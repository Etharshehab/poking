import 'package:flutter/material.dart';

class Letstart extends StatelessWidget {
  const Letstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 100,
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
          height: 100,
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
          onPressed: () {},
          child: const Text('Get Started'),
        )
      ]),
    );
  }
}
