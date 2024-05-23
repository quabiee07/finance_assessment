import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:finance_assesment/components/widgets/busy_button.dart';
import 'package:finance_assesment/components/widgets/input_field.dart';
import 'package:finance_assesment/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
            color: AppColors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Create an account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansBold,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              const Gap(8),
              const Text(
                'Invest and double your income now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Fonts.dmSansRegular,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textgrey,
                ),
              ),
              const Gap(87),
              const InputField(
                placeholder: 'Full name',
              ),
              const Gap(16),
              const InputField(
                placeholder: 'Email address',
              ),
              const Gap(16),
              const InputField(
                placeholder: 'Password',
              ),
              const Gap(70),
              BusyButton(onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
              }, title: 'Create Account'),
              const Gap(16),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: Fonts.dmSansBold,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
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
