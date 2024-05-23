import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:flutter/material.dart';

class BestPlansWidget extends StatelessWidget {
  const BestPlansWidget({
    super.key,
    required this.gradients,
    required this.images,
    required this.title,
    required this.subtitle,
    required this.index,
  });
  final int index;
  final List<LinearGradient> gradients;
  final List<String> images;
  final List<String> title;
  final List<String> subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: gradients[index],
      ),
      child: Stack(
        children: [
          Positioned(
            right: index == 2 ? 0 : -10,
            bottom: 2,
            child: index == 2
                ? Image.asset(
                    images[2],
                    height: 150,
                  )
                : Image.asset(
                    images[index],
                    scale: 2,
                    // width: 100,
                    height: 150,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: Fonts.dmSansRegular,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  subtitle[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: Fonts.dmSansRegular,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white.withOpacity(.7),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
