import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.placeholder,
  });
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xff00000000),
        border: Border.all(color: AppColors.textgrey, width: 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        cursorColor: AppColors.textgrey,
        style: const TextStyle(
            color: AppColors.textgrey,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            fontFamily: Fonts.dmSansRegular),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10),
          hintText: placeholder,
          border: InputBorder.none,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: AppColors.textgrey,
            fontFamily: Fonts.dmSansRegular,
          ),
          hintStyle: const TextStyle(
              fontSize: 17,
              fontFamily: Fonts.dmSansRegular,
              fontWeight: FontWeight.w400,
              color: AppColors.textgrey),
        ),
      ),
    );
  }
}
