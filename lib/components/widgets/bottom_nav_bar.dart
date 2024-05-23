import 'package:finance_assesment/components/res/colors.dart';
import 'package:finance_assesment/components/res/font.dart';
import 'package:finance_assesment/components/res/vectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BottomNavBarItem {
  BottomNavBarItem({
    required this.icon,
    required this.text,
  });

  String icon;
  String text;

  static List<BottomNavBarItem> get items => [
        BottomNavBarItem(
          text: 'Home',
          icon: home,
        ),
        BottomNavBarItem(
          text: 'Product',
          icon: search,
        ),
        BottomNavBarItem(
          text: 'Transaction',
          icon: transaction,
        ),
        BottomNavBarItem(
          text: 'Account',
          icon: profile,
        ),
      ];
}

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.currentIndex,
    this.items,
    this.centerItemText,
    this.height = 60.0,
    this.iconSize = 24.0,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(items?.length == 2 || items?.length == 4);
  }

  final List<BottomNavBarItem>? items;
  final String? centerItemText;
  final double? height;
  final double? iconSize;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int>? onTabSelected;
  final int selectedIndex;
  final int currentIndex;

  @override
  State<StatefulWidget> createState() =>
      BottomNavBarState(selectedIndex: selectedIndex);
}

class BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  var selectedIndex = 0;

  BottomNavBarState({required this.selectedIndex});

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  _updateIndex(int index) {
    widget.onTabSelected!(index);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items!.length, (int index) {
      return _buildTabItem(
        item: widget.items![index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    return BottomAppBar(
      color: AppColors.white,
      surfaceTintColor: AppColors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildTabItem({
    required BottomNavBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color? color =
        widget.currentIndex == index ? widget.selectedColor : widget.color;
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onPressed(index);
      },
      child: AnimatedContainer(
        height: widget.height,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInQuint,
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 1.0,
            end: 1.5, 
          ).animate(
            CurvedAnimation(
              parent: _controller,
              curve: Curves.easeInOut,
            ),
          ),
          child: Material(
              type: MaterialType.transparency,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(item.icon, color: color),
                  const Gap(4),
                  Text(
                    item.text,
                    style: TextStyle(
                      color: color,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: Fonts.dmSansRegular,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
