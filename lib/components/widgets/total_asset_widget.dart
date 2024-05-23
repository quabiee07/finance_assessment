import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class TotalAssetWidget extends StatelessWidget {
  const TotalAssetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 310,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(.17),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 125,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your total asset portfolio',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Fonts.dmSansRegular,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                    Gap(4),
                    Text.rich(TextSpan(
                      text: '₦',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                      children: [
                        TextSpan(
                          text: '203,935',
                          style: TextStyle(
                            fontFamily: Fonts.dmSansBold,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        )
                      ],
                    )
                        // '₦203,935',
                        // textAlign: TextAlign.center,

                        ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Invest now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Fonts.dmSansBold,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
