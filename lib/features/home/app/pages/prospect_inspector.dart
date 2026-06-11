import 'package:aidi_app/core/utils/app_colors.dart';
import 'package:aidi_app/features/home/app/pages/application_successful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../widgets/how_to_verify.dart';

class ProspectInspector extends StatefulWidget {
  const ProspectInspector({super.key});

  @override
  State<ProspectInspector> createState() => _ProspectInspectorState();
}

class _ProspectInspectorState extends State<ProspectInspector> {
  bool _isAgreed = false; // State for the checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhiteOpaque,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                // Circular Icon Container
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.creamOpaque,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      border: Border.all(
                        color: AppColors.pureWhite,
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                          'lib/images/engineering.svg',

                      )
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                // Header Text
                const Text(
                  'Become a project inspector',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.forestGreenOpaque,
                  ),
                ),
                const SizedBox(height: 12),
                // Description Text
                const Text(
                  'Act as the eyes of our community, verify\nmilestones, and preserve development integrity.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textMuted,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: Text(
                      'HOW TO VERIFY',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const HowToVerify(),
                const SizedBox(height: 32),

                // Terms and Conditions Section
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isAgreed = !_isAgreed;
                    });
                  },
                  child: Row(
                    children: [
                      FaIcon(
                        _isAgreed
                            ? FontAwesomeIcons.squareCheck
                            : FontAwesomeIcons.square,
                        color: _isAgreed ? AppColors.primaryGreen : AppColors.mustardGold,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Agree to terms & condition',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Action Button
                GestureDetector(
                  onTap: _isAgreed ? () {
                    // Action for when button is clicked
                  } : null,
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen.withOpacity(_isAgreed ? 1.0 : 0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ApplicationSuccessful()

                              )
                          );
                        },
                        child: const Text(
                          'Yes, be an inspector',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}