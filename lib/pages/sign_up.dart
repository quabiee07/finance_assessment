import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:finance_assesment/components/res/vectors.dart';
import 'package:finance_assesment/components/widgets/busy_button.dart';
import 'package:finance_assesment/pages/create_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(80),
              Image.asset(
                img,
                height: 273,
                width: 300,
              ),
              const Gap(16),
              const Text(
                'Stay on top of your\nfinance with us.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansBold,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(16),
              const Text(
                'We are your new financial Advisors\nto recommed the best investments for\nyou.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansRegular,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor,
                ),
              ),
              const Gap(50),
              BusyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                },
                title: 'Create Account',
              ),
              const Gap(16),
              const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansBold,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
