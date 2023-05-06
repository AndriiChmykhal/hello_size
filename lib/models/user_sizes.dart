import 'package:flutter/material.dart';

enum Sizes { small, medium, large, xlarge }

class UserSizes {
  Sizes tShirtSize;
  Sizes pantsSize;
  Sizes shoeSize;

  UserSizes({
    this.tShirtSize = Sizes.small,
    this.pantsSize = Sizes.small,
    this.shoeSize = Sizes.small,
  });

  UserSizes.fromMap(Map<String, dynamic> map) {
    tShirtSize = Sizes.values[map['tShirtSize']];
    pantsSize = Sizes.values[map['pantsSize']];
    shoeSize = Sizes.values[map['shoeSize']];
  }

  Map<String, dynamic> toMap() {
    return {
      'tShirtSize': tShirtSize.index,
      'pantsSize': pantsSize.index,
      'shoeSize': shoeSize.index,
    };
  }

  String sizeToString(Sizes size) {
    switch (size) {
      case Sizes.small:
        return 'S';
      case Sizes.medium:
        return 'M';
      case Sizes.large:
        return 'L';
      case Sizes.xlarge:
        return 'XL';
      default:
        return '';
    }
  }

  Widget buildSizeChip(Sizes size) {
    final theme = ThemeData();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(
          sizeToString(size),
          style: TextStyle(
            color: size == tShirtSize ? theme.colorScheme.onPrimary : null,
          ),
        ),
        selected: size == tShirtSize,
        onSelected: (selected) {
          if (selected) {
            tShirtSize = size;
          }
        },
        selectedColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        elevation: 2,
        backgroundColor: theme.colorScheme.surface,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
      ),
    );
  }
}
