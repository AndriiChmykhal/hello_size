import 'package:flutter/material.dart';
import 'package:hello_size/models/sizes.dart';

class AddSizePage extends StatefulWidget {
  final Sizes sizes;
  const AddSizePage({Key? key, required this.sizes}) : super(key: key);

  @override
  _AddSizePageState createState() => _AddSizePageState();
}

class _AddSizePageState extends State<AddSizePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Size'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _sizeController,
              decoration: InputDecoration(hintText: 'Size'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Add'),
              onPressed: () {
                final name = _nameController.text;
                final size = double.tryParse(_sizeController.text) ?? 0;
                final newSizes = widget.sizes.copyWith(
                  sizes: [...widget.sizes.sizes, Size(name: name, size: size)],
                );
                Navigator.of(context).pop(newSizes);
              },
            ),
          ],
        ),
      ),
    );
  }
}
