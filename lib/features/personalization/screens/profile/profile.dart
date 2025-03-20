import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: "assets/logos/splash_logo_white.png",
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile Info
              const TSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                onPressed: () {},
                title: "Name",
                value: "Coding with Aya",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Username",
                value: "coding_with_aya",
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Info
              const TSectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: "45687",
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                onPressed: () {},
                title: "E-mail",
                value: "coding_with_aya",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Phone Number",
                value: "+963 962 530 887",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Gender",
                value: "Female",
              ),
              TProfileMenu(
                onPressed: () {},
                title: "Date of Birth",
                value: "10 Oct, 1994",
              ),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close Account",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
