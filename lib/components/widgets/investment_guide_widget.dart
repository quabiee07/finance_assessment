
import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InvestmentGuideWidget extends StatelessWidget {
  const InvestmentGuideWidget({
    super.key,
    required this.investTitle,
    required this.investSubtitle,
    required this.investImgs,
    required this.index,
  });
  final int index;
  final List<String> investTitle;
  final List<String> investSubtitle;
  final List<String> investImgs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            investTitle[index],
            style: const TextStyle(
              fontFamily: Fonts.dmSansBold,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.textColor,
            ),
          ),
          const Gap(5),
          Text(
            investSubtitle[index],
            style: const TextStyle(
              fontFamily: Fonts.dmSansRegular,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
            ),
          ),
        ]),
        Container(
          height: 61,
          width: 61,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                investImgs[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
