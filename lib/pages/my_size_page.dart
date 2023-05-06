import 'package:flutter/material.dart';
import 'package:hello_size/models/sizes.dart';
import 'package:hello_size/models/user.dart';

class MySizePage extends StatefulWidget {
  @override
  _MySizePageState createState() => _MySizePageState();
}

class _MySizePageState extends State<MySizePage> {
  final UserSizes userSizes = UserSizes(
    pantsSize: Sizes.M,
    shoeSize: 42,
    tShirtSize: Sizes.L,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Sizes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pants size: ${userSizes.pantsSize}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Shoe size: ${userSizes.shoeSize}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'T-shirt size: ${userSizes.tShirtSize}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
