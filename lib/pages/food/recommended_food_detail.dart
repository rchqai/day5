import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';

import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 80,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear_all),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.raduis20),
                      topRight: Radius.circular(Dimensions.raduis20),
                    ),
                  ),
                  child: Center(
                    child: BigText(
                      size: Dimensions.font26,
                      text: "RecommendedFoodDetail",
                    ),
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: Colors.amberAccent,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/food0.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Column(
                  children: [
                    ExpandableTextWidget(
                      text:
                          "Chinese cuisine comprises cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has profoundly influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide. The world's earliest eating establishments recognizable as restaurants in the modern sense first emerged in Song dynasty China during the 11th and 12th centuries.[1][2] Street food became an integral aspect of Chinese food culture during the Tang dynasty, and the street food culture of much of Southeast Asia was established by workers imported from China during the late 19th century. Chinese cuisine comprises cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has profoundly influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide. The world's earliest eating establishments recognizable as restaurants in the modern sense first emerged in Song dynasty China during the 11th and 12th centuries.[1][2] Street food became an integral aspect of Chinese food culture during the Tang dynasty, and the street food culture of much of Southeast Asia was established by workers imported from China during the late 19th century. Chinese cuisine comprises cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has profoundly influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide. The world's earliest eating establishments recognizable as restaurants in the modern sense first emerged in Song dynasty China during the 11th and 12th centuries.[1][2] Street food became an integral aspect of Chinese food culture during the Tang dynasty, and the street food culture of much of Southeast Asia was established by workers imported from China during the late 19th century.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.remove),
                AppIcon(
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.add)
              ],
            )
          ],
        ));
  }
}
