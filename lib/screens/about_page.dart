import 'dart:math' as math;
import 'package:archmage_app/components/app_bar.dart';
import 'package:archmage_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top paragraph
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    height: 1.5,
                  ),
                  children: [
                    const TextSpan(text: 'With over 15 years '),
                    TextSpan(
                      text: '( since 2005 )',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ' of experience, teams \nof highly-trained engineers, deep industry \nsector ',
                    ),
                    TextSpan(
                      text: 'knowledge',
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: '\ntechnology expertise',
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text:
                          ', we help clients \ncreate custom software solutions that \nimproves their operations and opens new \nmarkets.',
                    ),
                  ],
                ),
              ),
            ),

            // Red background section
            Container(
              color: AppColors.red,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What is',
                    style: TextStyle(color: AppColors.white, fontSize: 45),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Archmage',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Text(
                        'ark·mage',
                        style: TextStyle(color: AppColors.white, fontSize: 20),
                      ),
                      const SizedBox(width: 6),
                      Icon(Icons.volume_up, color: AppColors.white, size: 20),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/illustration.png',
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '''Archmage Solutions (Pvt) Ltd is a Sri Lankan based leading product innovation house, established in 2005 as Archmage (Pvt) Ltd. We are a team of passionate creatives, developers and marketers offering end-to-end IT solutions, strategic technology consulting and product development services in Web, Mobile, Social, and Analytics. The company started off as a free-lancing software solution provider built upon the shoulders of a team of five passionate and aspiring Sri Lankan entrepreneurs.

Archmage's specialty is tailor-made solutions for how you work, sell, and grow. We go beyond conception to deliver effective and engaging creative experiences. Archmage works with entrepreneurs, startups and established organizations to achieve quality results, and by leveraging the complementary capabilities of the latest technological trends, Archmage translates business problems into scalable, future-proof software solutions. Having successfully managed over 450+ projects over the past 17 years, Archmage has accumulated an enviable and varied clientele including clients from United Kingdom, United States, Australia, Canada, India and Singapore.''',
                    style: TextStyle(
                      color: AppColors.white,
                      fontFamily: 'visbycf-medium',
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            const Text(
              'Archmage\nthrough the years',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 24),

            _buildTimelineItem(
              year: '2005',
              imagePath: 'assets/images/2005.png',
              description:
                  'Archmage was launched by 5 university friends. \nThey wanted to bring value to society using the \nthings they loved: business and software \ntechnology.',
            ),
            _buildTimelineItem(
              year: '2009',
              imagePath: 'assets/images/2009.png',
              description:
                  'Archmage established its first corporate office and \ncontinued to grow and build a team.',
            ),
            _buildTimelineItem(
              year: '2012',
              imagePath: 'assets/images/2012.png',
              description:
                  'A pioneer product Theater Solution was launched. \nStarting from 2012 Archmage puts more focus on \ncinema solutions and the company keeps \nrefreshing its solution portfolio with the product for \nlocal cinema market. Now the product is used by \n7 theater chains across the country.',
            ),
            _buildTimelineItem(
              year: '2013',
              imagePath: 'assets/images/2013.png',
              description:
                  'Archmage partnered with Datafields Ltd a \nPortugal based technology company specialized \nin data solutions.',
            ),
            _buildTimelineItem(
              year: '2015',
              imagePath: 'assets/images/2015.png',
              description:
                  'The name of the company was changed from \nArchmage (Pvt) Ltd to Archmage Solutions (Pvt) \nLtd. \n\nThe company received series A funding from R.W. \nHoldings.',
            ),
            _buildTimelineItem(
              year: '2016',
              imagePath: 'assets/images/2016.png',
              description:
                  'Archmage entered Healthcare sector and \npartnered with Ruhunu Hospital (Pvt) Ltd to \nestablish a new office in Galle.'
                  ' \n\nArchmage set up Mobile Development stream to \nfollow market needs and started partnership with \nCardiff App Developers in UK to provide mobile \napplication solutions. As for now, we have solid \nmobile (iOS, Android) experience; more than 150 \nprojects done',
            ),

            const SizedBox(height: 40),

            Container(
              color: AppColors.blackish,
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 55,
                      fontFamily: 'visbycf-medium',
                    ),
                  ),
                  const Text(
                    'Expertise',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'visbycf-medium',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'With Archmage you get more than just a pretty user interface.',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontFamily: 'visbycf-medium',
                    ),
                  ),
                  const SizedBox(height: 50),

                  _buildExpertiseItem(
                    Icons.web,
                    'Website Development',
                    'We design, develop, optimise platform-specific adaptive and responsive websites to empower your brand’s presence in the digital arena.',
                  ),
                  _buildExpertiseItem(
                    Icons.code,
                    'Software Product Development',
                    'We transform your ideas into future-ready tangible solutions that drive additional value and open new opportunities.',
                  ),
                  _buildExpertiseItem(
                    Icons.phone_android,
                    'Mobile App Development',
                    'We offer a full cycle of application design, development, integration and management services for both iOS and Android platforms.',
                  ),
                  _buildExpertiseItem(
                    Icons.shopping_cart,
                    'Ecommerce Solutions',
                    'Unlock new business opportunities using a tailor-made eCommerce solution. We can drive more leads and grow your ROI by utilising eCommerce platforms the right way.',
                  ),
                  _buildExpertiseItem(
                    Icons.lightbulb,
                    'Digital Consulting',
                    'We provide you with consultation on evaluating technology choices, optimizing processes, and discovering solutions for your business challenges.',
                  ),
                  _buildExpertiseItem(
                    Icons.campaign,
                    'Internet Marketing Solutions',
                    'We offer top-notch internet marketing services to boost your business revenue and brand awareness in the digital arena.',
                  ),
                  _buildExpertiseItem(
                    Icons.api,
                    'API Development & Integration',
                    'We employ API-driven development to seamlessly integrate custom software with corporate and third-party systems and services.',
                  ),

                  const SizedBox(height: 60),

                  const Text(
                    'How we\nProcess',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'visbycf-medium',
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'What sets us apart from many software\ndevelopment companies is we are with you all the way!\n\nFrom initial design and development, through to hosting, launch and aftersales ongoing support we do not end our relationship when your website goes live.',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      height: 1.5,
                      fontFamily: 'visbycf-medium',
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Center the whole process flow
                  Center(child: _buildProcessFlow()),
                ],
              ),
            ),
            const SizedBox(height: 60),
            // Technology Stack Section
            _buildTechnologyStack(),
            _buildWhyArchmageSection(),
            _buildTeamSection(),
          ],
        ),
      ),
    );
  }
}

// TIMELINE ITEM
Widget _buildTimelineItem({
  required String year,
  required String imagePath,
  required String description,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 2, height: 30, color: AppColors.black),
            Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
            ),
            Container(width: 2, height: 100, color: AppColors.black),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                year,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(imagePath, height: 100, fit: BoxFit.contain),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  fontFamily: 'visbycf-medium',
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// EXPERTISE ITEM
Widget _buildExpertiseItem(IconData icon, String title, String description) {
  return Container(
    margin: const EdgeInsets.only(bottom: 24),
    padding: const EdgeInsets.all(16),
    color: AppColors.blackish,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.white, size: 40),
        const SizedBox(height: 16),
        Row(
          children: [
            Container(width: 3, height: 24, color: AppColors.red),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'visbycf-medium',
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 15,
            height: 1.4,
            fontFamily: 'visbycf-medium',
          ),
        ),
      ],
    ),
  );
}

Widget _buildProcessFlow() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      _buildProcessStep(
        Icons.lightbulb,
        'Planning and\nConsulting',
        showConnector: true,
      ),
      _buildProcessStep(
        Icons.design_services,
        'Visual and\nTechnical Design',
        showConnector: true,
      ),

      const SizedBox(height: 0),
      _buildDottedBoxCenter(
        topIcon: Icons.code,
        topTitle: 'Development',
        bottomIcon: Icons.rocket_launch,
        bottomTitle: 'Deployment',
      ),
      _buildProcessStep(Icons.upgrade, 'Upgrades', showConnector: false),
    ],
  );
}

Widget _buildProcessStep(
  IconData icon,
  String title, {
  bool showConnector = true,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      // The red circle
      Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: AppColors.red,
          shape: BoxShape.circle,
        ),
        child: Center(child: Icon(icon, color: Colors.white, size: 30)),
      ),
      const SizedBox(height: 8),
      Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      if (showConnector) ...[
        const SizedBox(height: 20),
        // centered thin connector line
        Container(width: 2, height: 40, color: AppColors.white),
        const SizedBox(height: 20),
      ] else
        const SizedBox(height: 0),
    ],
  );
}

Widget _buildDottedBoxCenter({
  required IconData topIcon,
  required String topTitle,
  required IconData bottomIcon,
  required String bottomTitle,
}) {
  // small arrow circle
  Widget arrowCircle(IconData arrowIcon) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: AppColors.red,
        shape: BoxShape.circle,
      ),
      child: Center(child: Icon(arrowIcon, color: Colors.white, size: 16)),
    );
  }

  Widget innerColumn = Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: AppColors.red,
          shape: BoxShape.circle,
        ),
        child: Center(child: Icon(topIcon, color: Colors.white, size: 30)),
      ),
      const SizedBox(height: 8),
      Text(
        topTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),

      Container(width: 2, height: 30, color: AppColors.white),
      const SizedBox(height: 20),

      Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: AppColors.red,
          shape: BoxShape.circle,
        ),
        child: Center(child: Icon(bottomIcon, color: Colors.white, size: 30)),
      ),
      const SizedBox(height: 8),
      Text(
        bottomTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),
    ],
  );

  // Compose row
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Left arrow circle
        arrowCircle(Icons.arrow_upward),
        const SizedBox(width: 12),

        CustomPaint(
          painter: DashedRoundedRectPainter(
            color: AppColors.white.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 12.0,
            ),
            child: innerColumn,
          ),
        ),

        const SizedBox(width: 12),
        // Right arrow circle
        arrowCircle(Icons.arrow_downward),
      ],
    ),
  );
}

// Custom painter to draw a dashed / dotted rounded rectangle border.
class DashedRoundedRectPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashWidth;
  final double dashGap;
  final double radius;

  DashedRoundedRectPainter({
    required this.color,
    this.strokeWidth = 1.0,
    this.dashWidth = 6.0,
    this.dashGap = 6.0,
    this.radius = 12.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = RRect.fromRectAndRadius(
      rect.deflate(strokeWidth / 2),
      Radius.circular(radius),
    );

    final path = Path()..addRRect(rrect);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    // Draw dashed path by iterating metrics
    for (final metric in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < metric.length) {
        final double curDash = math.min(dashWidth, metric.length - distance);
        final Path extractPath = metric.extractPath(
          distance,
          distance + curDash,
        );
        canvas.drawPath(extractPath, paint);
        distance += curDash + dashGap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

Widget _buildTechnologyStack() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 20.0,
    ), // increased padding for spacing from edges
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Our\n',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.normal,
                  color: AppColors.blackish,
                  fontFamily: 'visbycf-medium',
                ),
              ),
              TextSpan(
                text: 'Technology\nStack',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackish,
                  fontFamily: 'visbycf-medium',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 35),

        _buildStackCategory('Project Management', [
          'assets/images/jira.png',
          'assets/images/asana.png',
        ]),
        _buildStackCategory('UI/UX Tools', [
          'assets/images/axure.png',
          'assets/images/figma.png',
          'assets/images/miro.png',
          'assets/images/ps.png',
          'assets/images/xd.png',
        ]),
        _buildStackCategory('Frontend Development', [
          'assets/images/html.png',
          'assets/images/css.png',
          'assets/images/bootstrap.png',
          'assets/images/react.png',
          'assets/images/js.png',
          'assets/images/angularjs.png',
          'assets/images/vue.png',
          'assets/images/meteor.png',
        ]),
        _buildStackCategory('Backend Development', [
          'assets/images/java.png',
          'assets/images/php.png',
          'assets/images/node.png',
          'assets/images/python.png',
        ]),
        _buildStackCategory('Mobile App Development', [
          'assets/images/swift.png',
          'assets/images/flutter.png',
          'assets/images/kotlin.png',
          'assets/images/reactnative.png',
        ]),
        _buildStackCategory('Databases', [
          'assets/images/mysql.png',
          'assets/images/oracle.png',
          'assets/images/sqlserver.png',
          'assets/images/mongodb.png',
        ]),
        _buildStackCategory('Servers', [
          'assets/images/aws.png',
          'assets/images/azure.png',
          'assets/images/cloud.png',
          'assets/images/digitalocean.png',
        ]),
      ],
    ),
  );
}

Widget _buildStackCategory(String title, List<String> icons) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 4,
              height: 20,
              color: Colors.red,
              margin: const EdgeInsets.only(right: 8),
            ),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.blackish,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'visbycf-medium',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: icons
              .map((path) => Image.asset(path, height: 60, fit: BoxFit.contain))
              .toList(),
        ),
      ],
    ),
  );
}

Widget _buildWhyArchmageSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      //Header
      Container(
        width: double.infinity,
        color: AppColors.blackish,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Why',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontFamily: 'visbycf-medium',
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Archmage?',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'visbycf-medium',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Clients hire Archmage for its technical ability and scalable structure '
              'but continue to retain because project relationships turn into trusted partnerships.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: AppColors.white,
                fontFamily: 'visbycf-medium',
              ),
            ),
          ],
        ),
      ),

      Container(
        width: double.infinity,
        color: AppColors.red,
        // internal padding for content only (won't create side gutters)
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 24),
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2, // 2 columns -> 2x3 with 6 items
          crossAxisSpacing: 24,
          mainAxisSpacing: 28,
          childAspectRatio: 0.95,
          children: [
            _whyArchmageGridItem(
              imagePath: 'assets/images/clientfocused.png',
              label: 'Client focused',
            ),
            _whyArchmageGridItem(
              imagePath: 'assets/images/domainexperts.png',
              label: 'Domain experts',
            ),
            _whyArchmageGridItem(
              imagePath: 'assets/images/reliablefast.png',
              label: 'Reliable & Fast Delivery',
            ),
            _whyArchmageGridItem(
              imagePath: 'assets/images/flexible.png',
              label: 'Flexible',
            ),
            _whyArchmageGridItem(
              imagePath: 'assets/images/engineeringquality.png',
              label: 'Engineering Quality',
            ),
            _whyArchmageGridItem(
              imagePath: 'assets/images/committed.png',
              label: 'Committed',
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _whyArchmageGridItem({
  String? imagePath,
  IconData? icon,
  required String label,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      imagePath != null
          ? Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.contain)
          : Icon(icon ?? Icons.help_outline, size: 64, color: Colors.white),
      const SizedBox(height: 12),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          height: 1.15,
          fontFamily: 'visbycf-medium',
        ),
      ),
    ],
  );
}

// Team Section
Widget _buildTeamSection() {
  return Container(
    color: AppColors.white,
    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'The',
              style: TextStyle(
                fontSize: 55,
                color: AppColors.black,
                fontFamily: 'visbycf-medium',
              ),
            ),
            Text(
              'Team',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
                fontFamily: 'visbycf-medium',
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),

        // Leaders
        _buildTeamLeader(
          imagePath: 'assets/images/nirosha.png',
          name: 'Nirosha Kodituwakku',
          role: 'CEO, Co-Founder',
          linkedIn: true,
        ),
        const SizedBox(height: 40),
        _buildTeamLeader(
          imagePath: 'assets/images/raveen.png',
          name: 'Raveen Wickramasinghe',
          role: 'Co-Founder',
          linkedIn: true,
        ),
        const SizedBox(height: 40),
        _buildTeamLeader(
          imagePath: 'assets/images/janith.png',
          name: 'Janith Liyanage',
          role: 'Co-Founder',
          linkedIn: true,
        ),

        const SizedBox(height: 60),

        // Small members
        GridView.count(
          crossAxisCount: 2, // two per line
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(), // let parent scroll
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            _buildSmallTeamMember(
              name: 'Nirosha',
              role: 'Project Manager',
              imagePath: null, // or your image path
            ),

            _buildSmallTeamMember(
              name: 'Kanchani',
              role: 'Project Manager',
              imagePath: 'assets/images/kanchani.png',
            ),
            _buildSmallTeamMember(
              name: 'Vishwa',
              role: 'Business Analyst',
              imagePath: 'assets/images/vishwa.png',
            ),
            _buildSmallTeamMember(
              name: 'Prabath',
              role: 'UI/UX Engineer',
              imagePath: 'assets/images/prabath.png',
            ),
            _buildSmallTeamMember(
              name: 'Malith',
              role: 'UI/UX Engineer',
              imagePath: 'assets/images/malith.png',
            ),
            _buildSmallTeamMember(
              name: 'Chanidu',
              role: 'Software Engineer',
              imagePath: 'assets/images/chanidu.png',
            ),
            _buildSmallTeamMember(
              name: 'Dilshan',
              role: 'Software Engineer',
              imagePath: 'assets/images/dilshan.png',
            ),
            _buildSmallTeamMember(
              name: 'You?',
              role: 'Join Archmage',
              imagePath: 'assets/images/you.png',
              isJoinArchmage: true,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildTeamLeader({
  required String imagePath,
  required String name,
  required String role,
  bool linkedIn = false,
}) {
  return Center(
    child: Column(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: ClipOval(
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.saturation,
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          role,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontFamily: 'visbycf-medium',
          ),
          textAlign: TextAlign.center,
        ),
        if (linkedIn)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(
              'assets/images/linkedin.png',
              width: 28,
              height: 28,
              fit: BoxFit.contain,
              color: AppColors.black,
            ),
          ),
      ],
    ),
  );
}

Widget _buildSmallTeamMember({
  required String name,
  required String role,
  String? imagePath,
  bool isJoinArchmage = false,
}) {
  final bool isNirosha = name == 'Nirosha';

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isNirosha ? AppColors.red : null,
        ),
        child: isNirosha
            ? const SizedBox.shrink()
            : imagePath != null
            ? ClipOval(
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.saturation,
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              )
            : Center(
                child: Image.asset(
                  'assets/images/you.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
      ),
      const SizedBox(height: 6),
      Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'visbycf-medium',
        ),
      ),
      if (role.isNotEmpty)
        Text(
          role,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isJoinArchmage ? FontWeight.bold : FontWeight.normal,
            fontFamily: 'visbycf-medium',
            color: isJoinArchmage ? Colors.red : Colors.grey[700],
          ),
        ),
    ],
  );
}
