import 'package:e_commerce_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: 'assets/logos/splash_logo_white.png',
            title: 'Shoes',
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
