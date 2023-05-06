import 'package:flutter/material.dart';
import 'package:hello_size/pages/add_size_page.dart';
import 'package:hello_size/models/user_sizes.dart';
import 'package:hello_size/utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserSizes _userSizes = UserSizes(shirt: null, pant: null, shoe: null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Sizes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Size', userSize: _userSize),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final Size userSize;

  MyHomePage({required this.title, required this.userSize});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _addSize() async {
    await Navigator.push(
      context,
        MaterialPageRoute(
          builder: (context) => AddSizePage(userSizesToSizes(widget.userSizes)
          ),
        ));
        setState(() {});
  }

  String _getSizeLabel(double? size) {
    if (size == null) {
      return 'No size';
    } else {
      return size.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Sizes:',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              'Shirt size: ${_getSizeLabel(widget.userSizes.shirtSize)}',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Text(
              'Pant size: ${_getSizeLabel(widget.userSizes.pantSize)}',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Text(
              'Shoe size: ${_getSizeLabel(widget.userSizes.shoeSize)}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addSize,
        tooltip: 'Add sizes',
        child: Icon(Icons.add),
      ),
    );
  }
}
