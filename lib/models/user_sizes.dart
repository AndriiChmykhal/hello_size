class UserSizes {
  String? brand;
  String? size;
  String? color;
  Map<String, String> brandSizes;

  UserSizes({
    this.brand,
    this.size,
    this.color,
    this.brandSizes = const {},
  });

  void updateBrandUserSize(String brand, String size) {
    brandSizes[brand] = size;
  }

  String? getBrandSize(String brand) {
    return brandSizes[brand];
  }
}
