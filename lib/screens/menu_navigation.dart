import 'package:archmage_app/screens/about_page.dart';
import 'package:archmage_app/screens/archlabs.dart';
import 'package:archmage_app/screens/blog_page.dart';
import 'package:archmage_app/screens/career.dart';
import 'package:archmage_app/screens/contact_page.dart';
import 'package:archmage_app/utils/app_colors.dart';
import 'package:archmage_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class MenuNavigation extends StatelessWidget {
  final bool isLoggedIn;
  const MenuNavigation({super.key, this.isLoggedIn = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.white,
                      size: 30,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                const SizedBox(height: 10),

                // Logo (centered)
                Center(
                  child: Image.asset('assets/images/am2.png', height: 100),
                ),

                const SizedBox(height: 50),

                // Menu items
                _buildNavItem('Home', isActive: true),
                _buildNavItem('Work'),
                _buildNavItem(
                  'About',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPage(),
                      ),
                    );
                  },
                ),

                // archLabs with navigation
                _buildNavItem(
                  'archLabs',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArchlabsPage(),
                      ),
                    );
                  },
                ),

                _buildCareerSwitch(context),
                _buildNavItem(
                  'Blog',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BlogPage()),
                    );
                  },
                ),
                _buildNavItem(
                  'Contact',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactPage(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 30),

                // Social icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildSocialIcon('assets/images/fb.png', size: 25),
                    _buildSocialIcon('assets/images/linkedin.png'),
                    _buildSocialIcon('assets/images/twitter.png'),
                    _buildSocialIcon('assets/images/insta.png'),
                  ],
                ),

                const SizedBox(height: 24),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (isLoggedIn) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MenuNavigation(isLoggedIn: false),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LoginPage(onLoginSuccess: () {}),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 3,
                    ),
                    child: Text(
                      isLoggedIn ? 'Logout' : 'Login',
                      style: TextStyles.size18WeightboldvisbycfBold,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    String label, {
    bool isActive = false,
    VoidCallback? onTap,
  }) {
    final item = Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'visbycf-bold',
              color: isActive ? AppColors.pinkish : AppColors.white,
            ),
          ),
          const SizedBox(height: 8),
          Container(height: 1, width: double.infinity, color: AppColors.white),
        ],
      ),
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: item);
    } else {
      return item;
    }
  }

  Widget _buildCareerSwitch(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CareerPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Career ',
                    style: TextStyles.size22WeightboldvisbycfBold,
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Icon(
                        Icons.compare_arrows,
                        color: AppColors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'Switch',
                    style: TextStyles.size22WeightboldvisbycfBold,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 1,
              width: double.infinity,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath, {double size = 35}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Image.asset(
        assetPath,
        width: size,
        height: size,
        color: AppColors.white,
      ),
    );
  }
}
