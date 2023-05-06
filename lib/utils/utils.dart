import 'package:hello_size/models/user_sizes.dart';
import 'package:hello_size/models/size.dart';

Sizes userSizesToSizes(UserSizes userSizes) {
  return Sizes(
    shirt: userSizes.shirt,
    pant: userSizes.pant,
    shoe: userSizes.shoe,
    brandSizes: userSizes.brandSizes,
  );
}