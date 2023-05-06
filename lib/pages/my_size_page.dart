import 'package:flutter/material.dart';
import 'package:hello_size/models/sizes.dart';
import 'package:hello_size/models/user_sizes.dart';

class MySizePage extends StatefulWidget {
  final UserSizes userSizes;

  const MySizePage({Key? key, required this.userSizes}) : super(key: key);

  @override
  _MySizePageState createState() => _MySizePageState();
}

class _MySizePageState extends State<MySizePage> {
  Sizes sizes = Sizes();

  @override
  void initState() {
    super.initState();

    sizes = Sizes.fromUserSizes(widget.userSizes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('My Size'),
    ),
    body: Container
