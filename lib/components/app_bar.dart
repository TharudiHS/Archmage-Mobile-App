import 'package:flutter/material.dart';
import 'asset_paths.dart';
import 'package:archmage_app/modules/menu_navigation.dart';
import '../../core/theme/app_colors.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.red,
    title: Row(
      children: [
        Image.asset(AssetPaths.am, height: 24),
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
