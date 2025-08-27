import 'package:flutter/material.dart';
import 'package:archmage_app/components/app_bar.dart';

import 'package:archmage_app/utils/app_colors.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            // Thin light line under AppBar
            Container(height: 0.2, color: AppColors.lightBorder),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Red top section
                    Container(
                      color: AppColors.red,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 31,
                        vertical: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 55,
                              height: 66 / 55,
                              fontWeight: FontWeight.w800,
                              color: AppColors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                height: 22 / 16,
                                color: AppColors.white,
                              ),
                              children: [
                                const TextSpan(
                                  text:
                                      'You have an idea in mind or think you are a great fit for our team? ',
                                ),
                                TextSpan(
                                  text: 'Let us know.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Form section
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 31,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLabel('Full Name*'),
                          _buildTextField(),
                          const SizedBox(height: 20),
                          _buildLabel('Company'),
                          _buildTextField(),
                          const SizedBox(height: 20),
                          _buildLabel('Email*'),
                          _buildTextField(),
                          const SizedBox(height: 20),
                          _buildLabel('Phone'),
                          _buildTextField(),
                          const SizedBox(height: 20),
                          _buildLabel('Tell us how we can help you? *'),
                          _buildTextField(maxLines: 5),
                          const SizedBox(height: 20),
                          _buildLabel('How did you hear about us? *'),
                          _buildDropdown(),
                          const SizedBox(height: 20),

                          // Consent text
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Checkbox(
                                  value: false,
                                  onChanged: (_) {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 14,
                                      height: 22 / 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text:
                                            'I give consent to the processing of my personal data given in the contact form above under the terms and conditions of Archmage ',
                                      ),
                                      TextSpan(
                                        text: 'privacy statement.',
                                        style: TextStyle(
                                          color: AppColors.red,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Send button
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.red,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x2C273814),
                                    offset: Offset(0, 4),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Send',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Footer section
                    Container(
                      color: AppColors.blackish,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 31,
                        vertical: 40,
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 140,
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontFamily: 'visbycf-medium',
                                      fontSize: 14,
                                    ),
                                    children: const [
                                      TextSpan(text: "Don't like\n"),
                                      TextSpan(
                                        text: 'forms?',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'visbycf-medium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // right content
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: AppColors.red,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 6),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '+94 77 290 7480',
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: 'visbycf-medium',
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              '+94 11 280 2471',
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: 'visbycf-medium',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 12),

                                    // Email row
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: AppColors.red,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          'contact@archmage.lk',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 14,
                                            fontFamily: 'visbycf-medium',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),
                          Container(
                            height: 0.5,
                            color: const Color(0xFF707070),
                          ),
                          const SizedBox(height: 20),

                          // Bottom row
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 140,
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontFamily: 'visbycf-medium',
                                      fontSize: 14,
                                    ),
                                    children: const [
                                      TextSpan(text: 'Where to\n'),
                                      TextSpan(
                                        text: 'find us',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColors.red,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 6),
                                    Expanded(
                                      child: Text(
                                        '38A, Wijerama Lane,\nGangodawila,\nNugegoda,\nSri Lanka',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontFamily: 'visbycf-medium',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

  // Helper: Field label
  static Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontFamily: 'visbycf-medium',
        color: AppColors.black,
      ),
    );
  }

  // Helper: Text field
  static Widget _buildTextField({int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.lightBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.lightBorder),
        ),
      ),
    );
  }

  // Helper: Dropdown
  static Widget _buildDropdown() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.lightBorder),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: const Text("Google or other search engines"),
          style: const TextStyle(fontSize: 13, fontFamily: 'visbycf-medium'),
          onChanged: (value) {},
          items: const [
            DropdownMenuItem(value: '1', child: Text('Option 1')),
            DropdownMenuItem(value: '2', child: Text('Option 2')),
          ],
        ),
      ),
    );
  }
}
