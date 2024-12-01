import 'package:flutter/material.dart';
class NavigationSecond extends StatefulWidget {
  const NavigationSecond({Key? key}) : super(key: key);
  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}
class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitri Navigation Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromARGB(255, 157, 216, 200));
              },
            ),
            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromARGB(255, 240, 149, 149));
              },
            ),
            ElevatedButton(
              child: const Text('Yellow'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromARGB(255, 252, 245, 176));
              },
            ),
          ],
        ),
      ),
    );
  }
}