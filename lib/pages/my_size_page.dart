import 'package:flutter/material.dart';
import 'package:hello_size/models/user_sizes.dart';
import 'package:hello_size/pages/add_size_page.dart';
import 'package:hello_size/models/size.dart';

class MySizePage extends StatefulWidget {
  final UserSizes userSizes;
  MySizePage({required this.userSizes});

  @override
  _MySizePageState createState() => _MySizePageState();
}

class _MySizePageState extends State<MySizePage> {
  late Size _userSizes;

  @override
  void initState() {
    super.initState();
    _userSizes = widget.userSizes;
  }

  void _navigateToAddSizePage() async {
    final UserSizes? newSizes = await Navigator.push<Size>(
      context,
      MaterialPageRoute(
        builder: (context) => AddSizePage(
          userSizes: _userSizes,
        ),
      ),
    );
    if (newSizes != null) {
      setState(() {
        _userSizes = newSizes;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Sizes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0),
            Text(
              'My Sizes',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shirt:',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  _userSizes.shirt ?? 'Not set',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pant:',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  _userSizes.pant ?? 'Not set',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shoe:',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  _userSizes.shoe ?? 'Not set',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _navigateToAddSizePage,
              child: Text('Edit Sizes'),
            ),
          ],
        ),
      ),
    );
  }
}