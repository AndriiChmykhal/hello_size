import 'package:flutter/material.dart';

class UserSizes {
  final double? height;
  final double? weight;
  final double? shoeSize;

  UserSizes(this.height, this.weight, this.shoeSize);

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'weight': weight,
      'shoeSize': shoeSize,
    };
  }

  factory UserSizes.fromJson(Map<String, dynamic> json) {
    return UserSizes(
      json['height'] as double?,
      json['weight'] as double?,
      json['shoeSize'] as double?,
    );
  }
}

class Sizes {
  final double height;
  final double weight;
  final double shoeSize;

  Sizes(this.height, this.weight, this.shoeSize);

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'weight': weight,
      'shoeSize': shoeSize,
    };
  }

  factory Sizes.fromJson(Map<String, dynamic> json) {
    return Sizes(
      json['height'] as double,
      json['weight'] as double,
      json['shoeSize'] as double,
    );
  }
}
