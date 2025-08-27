import 'package:archmage_app/screens/menu_navigation.dart';
import 'package:archmage_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.red,
    title: Row(
      children: [
        Image.asset('assets/images/am.png', height: 24),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuNavigation()),
            );
          },
        ),
      ],
    ),
  );
}
