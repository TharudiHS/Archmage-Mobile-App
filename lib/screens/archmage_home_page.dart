import 'package:archmage_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:archmage_app/utils/text_styles.dart';
import 'menu_navigation.dart';

class ArchmageHomePage extends StatefulWidget {
  const ArchmageHomePage({super.key});

  @override
  _ArchmageHomePageState createState() => _ArchmageHomePageState();
}

class _ArchmageHomePageState extends State<ArchmageHomePage> {
  bool isIncubatorExpanded = true;
  bool isEngineeringExpanded = false;
  bool isLabsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/am.png', height: 24),
            Spacer(),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuNavigation(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/image1.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Delivering\nmarket - leading\ndigital solutions',
                    style: TextStyles.size45WeightboldvisbycfBold,
                  ),

                  SizedBox(height: 12),
                  Text(
                    'We specialize in developing \ninnovative turn key solutions that \ndrive results.',
                    style: TextStyles.size20Weightboldvisbycfmedium,
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),

            Container(
              color: AppColors.red,
              padding: const EdgeInsets.symmetric(vertical: 32),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  _StatBlock(
                    number: '120',
                    label: 'Web Projects Launched',
                    showPlusSign: true,
                  ),
                  SizedBox(height: 24),
                  _StatBlock(
                    number: '10',
                    label: 'Sectors Worked In',
                    showPlusSign: true,
                  ),
                  SizedBox(height: 24),
                  _StatBlock(
                    number: '15',
                    label: 'Core Team',
                    showPlusSign: true,
                  ),
                  SizedBox(height: 24),
                  _StatBlock(
                    number: '17 yrs',
                    label: 'Industry Experience',
                    showPlusSign: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),

            _buildAccordion(
              title: buildArchTitle('Incubator'),
              isExpanded: isIncubatorExpanded,
              onTap: () {
                setState(() => isIncubatorExpanded = !isIncubatorExpanded);
              },
              content:
                  'At Arch Incubator we fuel visionary ideas and next-gen startups to build extraordinary products with our domain-specific experience and a range of innovative services to suit each stage of growth.',
            ),
            Divider(),

            _buildAccordion(
              title: buildArchTitle('Engineering'),
              isExpanded: isEngineeringExpanded,
              onTap: () {
                setState(() => isEngineeringExpanded = !isEngineeringExpanded);
              },
            ),
            Divider(),

            _buildAccordion(
              title: buildArchTitle('Labs'),
              isExpanded: isLabsExpanded,
              onTap: () {
                setState(() => isLabsExpanded = !isLabsExpanded);
              },
            ),

            SizedBox(height: 32),
            Container(
              color: AppColors.bgGray,
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Text(
                      'Brands we have\ndigitally transformed',
                      style: TextStyles.size32WeightboldvisbycfBold,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/EAP.png', height: 45),
                        Image.asset('assets/images/dialog.jpg', height: 45),
                        Image.asset('assets/images/MIMT.jpeg', height: 45),
                        Image.asset('assets/images/scope.jpg', height: 45),
                      ],
                    ),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.red,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text(
                        'View Portfolio',
                        style: TextStyles.size16WeightboldvisbycfBold,
                      ),
                    ),
                    SizedBox(height: 90),
                    Column(
                      children: [
                        const Text(
                          'Get in touch',
                          style: TextStyles.size25WeightboldvisbycfBold,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Contact us for a quote, We are\nhappy to help you.',
                          style: TextStyles.size16visbycfmedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColors.red,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.phone,
                                    color: AppColors.white,
                                    size: 28,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '+94 112 802 471',
                                    style: TextStyles
                                        .size11Weightboldvisbycfmedium,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              width: 150,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColors.bgGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color: AppColors.gray,
                                    size: 28,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'contact@archmage.lk',
                                    style: TextStyles
                                        .size11Weightboldvisbycfmediumgray,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildArchTitle(String rest) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'arch',
            style: TextStyles.size25WeightboldvisbycfBoldblack,
          ),
          TextSpan(text: rest, style: TextStyles.size25visbycfBold),
        ],
      ),
    );
  }

  Widget _buildAccordion({
    required Widget title,
    required bool isExpanded,
    required VoidCallback onTap,
    String? content,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                title,
                Icon(
                  isExpanded ? Icons.remove : Icons.add,
                  color: AppColors.red,
                ),
              ],
            ),
            if (isExpanded && content != null) ...[
              SizedBox(height: 8),
              Text(
                content,
                style: TextStyles.size15Weightboldvisbycfmediumgray,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StatBlock extends StatelessWidget {
  final String number;
  final String label;
  final bool showPlusSign;

  const _StatBlock({
    required this.number,
    required this.label,
    this.showPlusSign = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: number, style: TextStyles.size40visbycfmedium),
              if (showPlusSign)
                TextSpan(text: ' +', style: TextStyles.size40visbycfmedium),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyles.size13visbycfregular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
