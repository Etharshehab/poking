import 'package:flutter/material.dart';
import 'package:poking/model/listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/4.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 245, 243, 243),
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text(
                        'Recommended',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      child: const Icon(
                        Icons.menu_rounded,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return Image.asset(items[index].img);
                        }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
