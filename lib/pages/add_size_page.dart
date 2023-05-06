import 'package:flutter/material.dart';
import 'package:hello_size/models/size.dart';

class AddSizePage extends StatefulWidget {
  final Size userSizes;

  AddSizePage({Key? key, required this.userSizes}) : super(key: key);

  @override
  _AddSizePageState createState() => _AddSizePageState();
}

class _AddSizePageState extends State<AddSizePage> {
  final _formKey = GlobalKey<FormState>();
  final _brandController = TextEditingController();
  final _typeController = TextEditingController();
  final _sizeController = TextEditingController();

  void _saveSizes() {
    if (_formKey.currentState!.validate()) {
      final newSizes = UserSizes(
        shirtSize: double.tryParse(_shirtSizeController.text) ?? 0.0,
        pantSize: double.tryParse(_pantSizeController.text) ?? 0.0,
        shoeSize: double.tryParse(_shoeSizeController.text) ?? 0.0,
      );
      widget.userSizes.updateSizes(newSizes);
      Navigator.pop(context);
    }
  }

  void _saveBrandSize() {
    if (_formKey.currentState!.validate()) {
      final brand = _brandController.text;
      final type = _typeController.text;
      final size = double.tryParse(_sizeController.text) ?? 0.0;
      widget.userSizes.updateBrandSize(brand, type, size);
      Navigator.pop(context);
    }
  }

  Widget _buildShirtSizeField() {
    return TextFormField(
      controller: _shirtSizeController,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Shirt Size',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return null;
        }
        if (double.tryParse(value) == null) {
          return 'Please enter a valid number';
        }
        return null;
      },
    );
  }

  Widget _buildPantSizeField() {
    return TextFormField(
      controller: _pantUserController,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Pant Size',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return null;
        }
        if (double.tryParse(value) == null) {
          return 'Please enter a valid number';
        }
        return null;
      },
    );
  }

  Widget _buildShoeSizeField() {
    return TextFormField(
      controller: _shoeSizeController,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Shoe Size',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return null;
        }
        if (double.tryParse(value) == null) {
          return 'Please enter a valid number';
        }
        return null;
      },
    );
  }

  Widget _buildBrandField() {
    return TextFormField(
      controller: _brandController,
      decoration: InputDecoration(
        labelText: 'Brand',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a brand';
        }
        return null;
      },
    );
  }

  Widget _buildTypeField() {
    return TextFormField(
      controller: _typeController,
      decoration: InputDecoration(
        labelText: 'Type',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a type';
        }
        return null;
      },
    );
  }

  Widget _buildSizeField() {
    return TextFormField(
      controller: _sizeController,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Size',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return null;
        }
        if (double.tryParse(value) == null) {
          return 'Please enter a valid number';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Size'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.0),
              Text(
                'Add Your Sizes',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              _buildShirtSizeField(),
              SizedBox(height: 16.0),
              _buildPantSizeField(),
              SizedBox(height: 16.0),
              _buildShoeSizeField(),
              SizedBox(height: 32.0),
              Text(
                'Add Brand Size Mapping',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              _buildBrandField(),
              SizedBox(height: 16.0),
              _buildTypeField(),
              SizedBox(height: 16.0),
              _buildSizeField(),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _saveSizes,
                child: Text('Save Sizes'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _saveBrandSize,
                child: Text('Save Brand Size'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
