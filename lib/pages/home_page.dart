import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:finance_assesment/components/res/vectors.dart';
import 'package:finance_assesment/components/widgets/best_plans_widget.dart';
import 'package:finance_assesment/components/widgets/bottom_nav_bar.dart';
import 'package:finance_assesment/components/widgets/investment_guide_widget.dart';
import 'package:finance_assesment/components/widgets/total_asset_widget.dart';
import 'package:finance_assesment/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(left: 24),
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(
              menu,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 24),
              padding: const EdgeInsets.all(4),
              child: SvgPicture.asset(notification),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome, Jessie.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansBold,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(34),
              const TotalAssetWidget(),
              const Gap(20),
              const Row(
                children: [
                  Text(
                    'Best Plans',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Fonts.dmSansBold,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'See all',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Fonts.dmSansBold,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.red,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: AppColors.red,
                      )
                    ],
                  ),
                ],
              ),
              const Gap(20),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: title.length,
                  separatorBuilder: (context, index) => const Gap(20),
                  itemBuilder: (context, index) {
                    return BestPlansWidget(
                      index: index,
                      gradients: gradients,
                      images: images,
                      title: title,
                      subtitle: subtitle,
                    );
                  },
                ),
              ),
              const Gap(30),
              const Text(
                'Investment Guide',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansBold,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 375,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: investTitle.length,
                  separatorBuilder: (context, index) => Divider(
                    thickness: 0.5,
                    color: AppColors.textgrey.withOpacity(.5),
                  ),
                  itemBuilder: (context, index) {
                    return InvestmentGuideWidget(
                      index: index,
                      investTitle: investTitle,
                      investSubtitle: investSubtitle,
                      investImgs: investImgs,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColors.white,
        ),
        child: BottomNavBar(
          currentIndex: 0,
          selectedIndex: 0,
          color: AppColors.textColor,
          height: 74,
          selectedColor: AppColors.primary,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: (int index) {},
          items: [
            for (final tabItem in BottomNavBarItem.items)
              BottomNavBarItem(
                text: tabItem.text,
                icon: tabItem.icon,
              ),
          ],
        ),
      ),
    );
  }
}
