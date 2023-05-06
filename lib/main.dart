import 'package:flutter/material.dart';
import 'package:hello_size/models/user_sizes.dart';
import 'package:hello_size/pages/my_size_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserSizes userSizes = UserSizes(
      tShirtSize: null,
      pantsSize: null,
      shoeSize: null,
    );

    return MaterialApp(
      title: 'My Size',
      home: MyHomePage(userSizes: userSizes),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final UserSizes userSizes;

  const MyHomePage({Key? key, required this.userSizes}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void addSizePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddSizePage(userSizes: widget.userSizes),
      ),
    ).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Size'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Your sizes:',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'Height: ${widget.userSizes.height ?? 'Not set'}',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Weight: ${widget.userSizes.weight ?? 'Not set'}',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: addSizePage,
            child: Text('Add size'),
          ),
        ],
      ),
    );
  }
}
