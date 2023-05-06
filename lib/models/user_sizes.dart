class UserSizes {
  String? shirt;
  String? pant;
  String? shoe;
  Map<String, String> brandSizes;

  UserSizes({
    this.shirt,
    this.pant,
    this.shoe,
    this.brandSizes = const {},
  });

  void updateBrandSize(String brand, String size) {
    brandSizes[brand] = size;
  }

  String? getBrandSize(String brand) {
    return brandSizes[brand];
  }
}
