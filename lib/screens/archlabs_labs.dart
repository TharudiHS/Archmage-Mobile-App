import 'package:archmage_app/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:archmage_app/components/asset_paths.dart';
import 'package:archmage_app/utils/app_colors.dart';

class ArchlabsPage extends StatelessWidget {
  const ArchlabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: AppColors.veryLightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fixed image + black section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetPaths.img1,
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    color: AppColors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ArchLabs\nTraining",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "As the demand for professionals with hands-on experience ever increasing. "
                          "We train fresh IT Graduates/Qualified individuals to match our partner company requirements.\n\n"
                          "For our partner companies its a focused BENCH!",
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 15,
                            height: 1.4,
                            fontFamily: 'visbycf-medium',
                          ),
                        ),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.red,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                "Join with archLabs",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                backgroundColor: AppColors.darkGray,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                "Hire resources",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Our Team",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.filter_list_alt,
                      size: 28,
                      color: AppColors.darkGray,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildTeamCard("Malith Weeramuni", "Trainee UI/UX Designer"),
              _buildTeamCard("Malith Weeramuni", "Trainee UI/UX Designer"),
              _buildTeamCard("Malith Weeramuni", "Trainee UI/UX Designer"),
              _buildTeamCard("Malith Weeramuni", "Trainee UI/UX Designer"),
              _buildTeamCard("Malith Weeramuni", "Trainee UI/UX Designer"),
              _buildTeamCard("Malith Weeramuni", "Trainee UI/UX Designer"),
              const SizedBox(height: 55),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black,
                      fontFamily: 'visbycf-medium',
                    ),
                    children: [
                      TextSpan(text: "What's happening\nat "),
                      TextSpan(
                        text: "arch",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "Labs?"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildNewsItem(
                "Indula and Chanuga Joining ecologital",
                AssetPaths.img2,
                "In just 10 months our two best React resources join a leading firm.",
              ),
              _buildNewsItem(
                "Catch up with INIVOS & CAD teams",
                AssetPaths.img3,
                "Checking on continuous improvements on the \nteams.",
              ),
              _buildNewsItem(
                "INIVOS offer letters for 4 Engineers",
                AssetPaths.img4,
                "We love developing brilliant brains. They simply get Npicked up by great companies ",
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: AppColors.black,

                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hiring Now",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Limited slots available. Hurry up now!",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontFamily: 'visbycf-medium',
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            "Join with archLabs",
                            style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.arrow_right_alt, color: AppColors.red),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeamCard(String name, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 80, 16, 24),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "In the making",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.gray92,
                      fontSize: 14,
                      fontFamily: 'visbycf-medium',
                    ),
                  ),
                  const SizedBox(height: 14),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildTag("#React"),
                      _buildTag("#NodeJS"),
                      _buildTag("#Bootstrap"),
                      _buildTag("#Android"),
                      _buildTag("#iOS"),
                      _buildTag("#Flutter"),
                      _buildTag("#Kotlin"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 55,
                        vertical: 4,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "View Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 0,
            child: CircleAvatar(
              backgroundImage: AssetImage(AssetPaths.profile),
              radius: 60,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(233, 230, 228, 228),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 9,
          fontFamily: 'visbycf-medium',
          color: AppColors.blackish,
        ),
      ),
    );
  }

  Widget _buildNewsItem(String title, String imagePath, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'visbycf-bold',
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 6),
          RichText(
            text: TextSpan(
              text: description,
              style: const TextStyle(color: AppColors.gray92, fontSize: 15),
              children: const [
                TextSpan(
                  text: " Read More....",
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
