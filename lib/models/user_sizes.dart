import 'package:flutter/material.dart';

import 'sizes.dart';

class UserSizes {
  Sizes? tShirtSize;
  Sizes? pantsSize;
  Sizes? shoeSize;

  UserSizes({
    this.tShirtSize = Sizes.small,
    this.pantsSize = Sizes.small,
    this.shoeSize = Sizes.small,
  });
}

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
