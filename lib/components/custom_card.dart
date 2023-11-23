import 'package:flutter/material.dart';



class CustomCard extends StatelessWidget {
    const CustomCard();
   @override
  Widget build(BuildContext context) {
   return Scaffold(
     
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.abc,
                size: 50,
              ),
              title: Text('Demo Title'),
              subtitle: Text('This is a simple card in Flutter.'),
            ),
            TextButton(
              child: const Text('GOT IT'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}