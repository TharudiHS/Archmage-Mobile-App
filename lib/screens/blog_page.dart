import 'package:archmage_app/components/app_bar.dart';
import 'package:archmage_app/utils/app_colors.dart';
import 'package:archmage_app/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section with background image
            Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/blog_banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "What's happening\nat archmage?",
                    textAlign: TextAlign.center,
                    style: TextStyles.size40WeightboldvisbycfBold,
                  ),
                  const SizedBox(height: 10),

                  Transform.rotate(
                    angle: pi / 2,
                    child: Icon(
                      Icons.toggle_off_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Blog list
            _buildBlogCard(
              imagePath: 'assets/images/img2.jpeg',
              title: "Indula and Chanuga Joining ecological",
              description:
                  "In just 10 months our two best React resources join \na leading firm.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: 'assets/images/img3.png',
              title: "Catch up with INVIVOS & CAD teams",
              description:
                  "Checking on continuous improvements on the \nteams.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: 'assets/images/img4.png',
              title: "INVIVOS offer letters for 4 Engineers",
              description:
                  "We love developing brilliant brains. They simply get \npicked up by great companies.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: 'assets/images/img2.jpeg',
              title: "Indula and Chanuga Joining ecological",
              description:
                  "In just 10 months our two best React resources join \na leading firm.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: 'assets/images/img3.png',
              title: "Catch up with INVIVOS & CAD teams",
              description:
                  "Checking on continuous improvements on the \nteams.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: 'assets/images/img4.png',
              title: "INVIVOS offer letters for 4 Engineers",
              description:
                  "We love developing brilliant brains. They simply get \npicked up by great companies.",
            ),

            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "More Articles",
                    style: TextStyles.size14WeightboldvisbycfBoldblack,
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.keyboard_arrow_down, color: AppColors.red),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildBlogCard({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 10),
          Text(title, style: TextStyles.size18WeightboldvisbycfBoldblack),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              style: TextStyles.size15visbycfBold,
              children: [
                TextSpan(text: "$description "),
                const TextSpan(
                  text: "Read More....",
                  style: TextStyle(color: AppColors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
