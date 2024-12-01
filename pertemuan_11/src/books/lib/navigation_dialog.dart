import 'package:flutter/material.dart';
class NavigationDialog extends StatefulWidget {
  const NavigationDialog({super.key});
  @override
  State<NavigationDialog> createState() => _NavigationDialogState();
}
class _NavigationDialogState extends State<NavigationDialog> {
  Color color = const Color.fromARGB(255, 90, 168, 178);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Mandes Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }
  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                color = const Color.fromARGB(255, 157, 216, 200);
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                color = const Color.fromARGB(255, 240, 149, 149);
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                color = const Color.fromARGB(255, 252, 245, 176);
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }
}