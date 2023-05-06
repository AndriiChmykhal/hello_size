class UserSizes {
  double? shirtSize;
  double? pantSize;
  double? shoeSize;
  Map<String, Map<String, double>>? brandToSizeMap;

  UserSizes({this.shirtSize, this.pantSize, this.shoeSize, this.brandToSizeMap});

  void setBrandSize(String brand, String type, double size) {
    brandToSizeMap?[brand] = {type: size};
  }

  double? getBrandSize(String brand, String type) {
    if (brandToSizeMap?[brand] == null) {
      return null;
    } else {
      return brandToSizeMap?[brand]?[type];
    }
  }
}