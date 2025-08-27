import 'package:flutter/material.dart';
import 'package:archmage_app/components/app_bar.dart';
import 'package:archmage_app/components/asset_paths.dart';
import 'package:archmage_app/utils/app_colors.dart';
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
                  image: AssetImage(AssetPaths.blogbanner),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'visbycf-bold',
                      shadows: [
                        // add shadow for text visibility
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 4,
                          color: Colors.black54,
                        ),
                      ],
                    ),
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
              imagePath: AssetPaths.img2,
              title: "Indula and Chanuga Joining ecological",
              description:
                  "In just 10 months our two best React resources join \na leading firm.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: AssetPaths.img3,
              title: "Catch up with INVIVOS & CAD teams",
              description:
                  "Checking on continuous improvements on the \nteams.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: AssetPaths.img4,
              title: "INVIVOS offer letters for 4 Engineers",
              description:
                  "We love developing brilliant brains. They simply get \npicked up by great companies.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: AssetPaths.img2,
              title: "Indula and Chanuga Joining ecological",
              description:
                  "In just 10 months our two best React resources join \na leading firm.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: AssetPaths.img3,
              title: "Catch up with INVIVOS & CAD teams",
              description:
                  "Checking on continuous improvements on the \nteams.",
            ),
            const SizedBox(height: 25),

            _buildBlogCard(
              imagePath: AssetPaths.img4,
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: AppColors.black,
                    ),
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
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'visbycf-bold',
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: AppColors.gray92,
                fontSize: 15,
                fontFamily: 'visbycf-bold',
              ),
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
