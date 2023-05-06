import 'package:flutter/material.dart';

import 'sizes.dart';

class UserSizes {
  final Sizes? tShirtSize;
  final Sizes? pantsSize;
  final Sizes? shoeSize;

  UserSizes({
    required this.tShirtSize,
    required this.pantsSize,
    required this.shoeSize,
  });

  UserSizes.fromJson(Map<String, dynamic> json)
      : tShirtSize = Sizes.fromJson(json['tShirtSize']),
        pantsSize = Sizes.fromJson(json['pantsSize']),
        shoeSize = Sizes.fromJson(json['shoeSize']);

  Map<String, dynamic> toJson() => {
    'tShirtSize': tShirtSize.toJson(),
    'pantsSize': pantsSize.toJson(),
    'shoeSize': shoeSize.toJson(),
  };
}
