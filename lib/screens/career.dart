import 'package:flutter/material.dart';
import 'package:archmage_app/components/app_bar.dart';
import 'package:archmage_app/utils/app_colors.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key});

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  bool isUIUXExpanded = true;
  bool isFrontendExpanded = false;
  bool isBackendExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top image
              Image.asset(
                'assets/images/careerHeader.png',
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),

              // Red section with headline
              Container(
                width: double.infinity,
                color: AppColors.red,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Switch your\ncareer to IT",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Our online traineeship provides you with the right courses, practical work and industry training to start \na new career in IT.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 1.4,
                        fontFamily: 'visbycf-medium',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // Kick Off Section (center aligned)
              _buildCenteredSection(
                icon: Icons.rocket_launch,
                titleBold: 'Kick off',
                titleRest: ' from\nwhere you are',
                description:
                    'A great opportunity for both beginners \nand experienced candidates from any \nindustry who are looking to switch their \ncareers into IT.',
              ),

              // Flexible Section
              _buildCenteredSection(
                icon: Icons.loop,
                titleBold: 'Flexible',
                titleRest: ' and\n100% online',
                description:
                    'A career advancement training from the \ncomfort of your own home - all you \nneed is a computer and an internet \nconnection.',
              ),

              // Certification Section
              _buildCenteredSection(
                icon: Icons.verified,
                titleBold: 'Certification',
                titleRest: ' and\njob guarantee',
                description:
                    'A certificate of completion offering you a \nguaranteed placement in one of our \nhost companies.',
              ),

              const SizedBox(height: 90),

              // Traineeships Tabs and details
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    // "Our Traineeships" centered text
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Our ',
                        style: TextStyle(fontSize: 25, color: AppColors.black),
                        children: [
                          TextSpan(
                            text: 'Traineeships',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),

                    // Tabs
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            'Web Development',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Mobile Development',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),

                    // Preview Image
                    Image.asset(
                      'assets/images/webPreview.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                    const SizedBox(height: 70),

                    // UI/UX Designing
                    _customExpandableTile(
                      title: 'UI and UX Designing',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Quisque nec consequat purus. \nDonec sed purus finibus, porta augue sed. \nconsequat purus.',
                      isExpanded: isUIUXExpanded,
                      onTap: () {
                        setState(() {
                          isUIUXExpanded = !isUIUXExpanded;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Divider(),

                    // Frontend
                    _customExpandableTile(
                      title: 'Frontend Development',
                      isExpanded: isFrontendExpanded,
                      onTap: () {
                        setState(() {
                          isFrontendExpanded = !isFrontendExpanded;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Divider(),

                    // Backend
                    _customExpandableTile(
                      title: 'Backend Development',
                      isExpanded: isBackendExpanded,
                      onTap: () {
                        setState(() {
                          isBackendExpanded = !isBackendExpanded;
                        });
                      },
                    ),
                    const Divider(),
                    const SizedBox(height: 50),

                    _buildCallToActionSection(),
                    _buildPartnerSuccessContactSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Centered info block
  Widget _buildCenteredSection({
    required IconData icon,
    required String titleBold,
    required String titleRest,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: AppColors.red, size: 100),
            const SizedBox(height: 12),
            Text.rich(
              TextSpan(
                text: titleBold,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                  fontSize: 30,
                  fontFamily: 'visbycf-regular',
                ),
                children: [
                  TextSpan(
                    text: titleRest,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: AppColors.black,
                      fontFamily: 'visbycf-regular',
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.gray,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPartnerSuccessContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Partner Companies
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 25, color: AppColors.black),
                  children: [
                    TextSpan(text: 'Partner '),
                    TextSpan(
                      text: 'Companies',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/inivos_logo.png', height: 20),
                  const SizedBox(width: 16),
                  Image.asset(
                    'assets/images/ceylon_solutions_logo.png',
                    height: 17,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),

        // Success Stories
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 25, color: AppColors.black),
                  children: [
                    TextSpan(text: 'Success '),
                    TextSpan(
                      text: 'Stories',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Don’t just take our word for it. Hear more from our alumni!',
                style: TextStyle(
                  color: AppColors.gray92,
                  fontFamily: 'visbycf-regular',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 90,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    margin: const EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Manthindra Palliyaguru',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Ceylon Solutions',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Column(
                              children: [
                                Text(
                                  'Job Before',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Junior Project\nManager',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.arrow_forward,
                                color: AppColors.white,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Job After',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Senior Project\nManager',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 100,

                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/man.png'),
                      radius: 60,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 12, color: AppColors.black),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 12, color: AppColors.red),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 12, color: AppColors.black),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 12, color: AppColors.black),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),

        // Contact Section
        Container(
          width: double.infinity,
          color: AppColors.blackish,
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Have any questions?',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Speak to our team. We are here to help you \nfind the right program.',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.phone, color: AppColors.red, size: 26),
                  SizedBox(width: 10),
                  Text(
                    '+94 77 290 7480',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.white,
                      fontFamily: 'visbycf-regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              const Text(
                'We are available Monday - Friday\n9am to 7pm SL hours',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13,
                  fontFamily: 'visbycf-regular',
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCallToActionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Ready to '),
                TextSpan(
                  text: 'level up ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'in\n'),
                TextSpan(
                  text: '12 months?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black, height: 1.5),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Join the program',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontFamily: 'visbycf-bold',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const _CheckItem(text: 'Full-time remote traineeship'),
              const _CheckItem(text: 'Duration 12 months'),
              const _CheckItem(
                text: '1 year experience service letter upon completion',
              ),
              const _CheckItem(
                text: 'Guaranteed job placement or your money back',
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'LKR 25,000',
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'visbycf-medium',
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'per month',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 75,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Book a Call',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class _CheckItem extends StatelessWidget {
  final String text;

  const _CheckItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.check, color: AppColors.white, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontFamily: 'visbycf-medium',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Expansion Tile
extension on _CareerPageState {
  Widget _customExpandableTile({
    required String title,
    bool isExpanded = false,
    String? description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 28,
                      color: AppColors.black,
                      fontFamily: 'visbycf-regular',
                    ),
                    children: _buildTitleSpans(title),
                  ),
                ),
              ),
              Icon(isExpanded ? Icons.remove : Icons.add, color: AppColors.red),
            ],
          ),
          if (isExpanded && description != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 15, color: AppColors.gray),
              ),
            ),
        ],
      ),
    );
  }

  List<TextSpan> _buildTitleSpans(String title) {
    if (title.startsWith('UI and UX')) {
      return const [
        TextSpan(
          text: 'UI and UX ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'Designing'),
      ];
    } else if (title.startsWith('Frontend')) {
      return const [
        TextSpan(
          text: 'Frontend ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'Development'),
      ];
    } else if (title.startsWith('Backend')) {
      return const [
        TextSpan(
          text: 'Backend ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'Development'),
      ];
    } else {
      return [TextSpan(text: title)];
    }
  }
}
