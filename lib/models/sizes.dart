import 'package:flutter/foundation.dart';

class Sizes {
  final double neck;
  final double bust;
  final double waist;
  final double hips;

  Sizes({
    required this.neck,
    required this.bust,
    required this.waist,
    required this.hips,
  });

  factory Sizes.fromJson(Map<String, dynamic> json) {
    return Sizes(
      neck: json['neck'] as double,
      bust: json['bust'] as double,
      waist: json['waist'] as double,
      hips: json['hips'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'neck': neck,
      'bust': bust,
      'waist': waist,
      'hips': hips,
    };
  }

  Sizes copyWith({
    double? neck,
    double? bust,
    double? waist,
    double? hips,
  }) {
    return Sizes(
      neck: neck ?? this.neck,
      bust: bust ?? this.bust,
      waist: waist ?? this.waist,
      hips: hips ?? this.hips,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Sizes &&
              runtimeType == other.runtimeType &&
              neck == other.neck &&
              bust == other.bust &&
              waist == other.waist &&
              hips == other.hips;

  @override
  int get hashCode =>
      neck.hashCode ^ bust.hashCode ^ waist.hashCode ^ hips.hashCode;

  @override
  String toString() {
    return 'Sizes{neck: $neck, bust: $bust, waist: $waist, hips: $hips}';
  }
}
