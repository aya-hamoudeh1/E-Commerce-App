import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const TBrandShowCase(
                images: [
                  'assets/logos/Facebook –logo.jpg',
                  'assets/logos/google_logo.jpg',
                  'assets/logos/splash_logo_black.png'
                ],
              ),
              const TBrandShowCase(
                images: [
                  'assets/logos/Facebook –logo.jpg',
                  'assets/logos/google_logo.jpg',
                  'assets/logos/splash_logo_black.png'
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Products You May Like
              TSectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
