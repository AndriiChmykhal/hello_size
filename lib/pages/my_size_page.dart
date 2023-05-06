import 'package:flutter/material.dart';
import 'package:hello_size/models/user_sizes.dart';
import 'package:hello_size/models/sizes.dart';

class MySizePage extends StatefulWidget {
  final UserSizes userSizes;

  const MySizePage({Key? key, required this.userSizes}) : super(key: key);

  @override
  _MySizePageState createState() => _MySizePageState();
}

class _MySizePageState extends State<MySizePage> {
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
              'Shirt size: ${widget.userSizes.sizes.shirtSize ?? 'Not set'}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Pants size: ${widget.userSizes.sizes.pantsSize ?? 'Not set'}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Shoe size: ${widget.userSizes.sizes.shoeSize ?? 'Not set'}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
