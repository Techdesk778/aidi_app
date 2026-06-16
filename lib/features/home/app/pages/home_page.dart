import 'package:aidi_app/features/home/app/pages/prospect_inspector.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/iconoir.dart';

import '../../../../core/utils/app_colors.dart';
import '../widgets/active_projects.dart';
import '../widgets/continue_payment.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/project_contractor.dart';
import '../widgets/story_card.dart';
import 'notification.dart' as custom_notification;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhiteOpaque,
      appBar: AppBar(
        backgroundColor: AppColors.offWhiteOpaque,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 16.0,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Hello Alex\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.navyBlack,
                ),
              ),
              TextSpan(
                text: 'Your kindness changes lives',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const custom_notification.Notification(),
                  ),
                );
              },
              child: Container(
                  height: 48,
                  width: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Iconify(
                    Iconoir.bell_notification,
                  ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // --- Impact Card Section ---
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('lib/images/dashboard card.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 25, top: 30, bottom: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: const TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'TOTAL IMPACT\n',
                                              style: TextStyle(
                                                color: AppColors.textMuted,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              )
                                          ),
                                          TextSpan(
                                              text: '₦12,000,000',
                                              style: TextStyle(
                                                color: AppColors.smokeWhite,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                              )
                                          )
                                        ]
                                    )
                                ),
                                const SizedBox(height: 15),
                                Container(
                                  height: 70,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.smokeWhite,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: RichText(
                                        text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'Projects Supported\n',
                                                  style: TextStyle(
                                                    color: AppColors.primaryGreen,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14,
                                                  )
                                              ),
                                              TextSpan(
                                                  text: '6',
                                                  style: TextStyle(
                                                    color: AppColors.deepAmberGold,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  )
                                              )
                                            ]
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(0.1)
                              ),
                              child: const Center(
                                child: FaIcon(
                                  FontAwesomeIcons.clockRotateLeft,
                                  color: AppColors.smokeWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 42.0, top: 4.0, bottom: 8.0),
                    child: Text(
                      'Stories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const StoryCard(),

                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 42.0, top: 4.0, bottom: 8.0),
                    child: Text(
                      'Active Projects',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.forestGreenOpaque,
                      ),
                    ),
                  ),
                  const ActiveProjects(),

                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Explore More',
                        style: TextStyle(
                          color: AppColors.primaryGreen,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.deepAmberGold,
                      )
                    ],
                  ),

                  // --- Inspector Card Section ---
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryGreen, width: 1.0),
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                AppColors.creamOpaque,
                                AppColors.mintOpaque,

                              ]
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: RichText(
                                  text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Become a Project Inspector\n',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            )
                                        ),
                                        TextSpan(
                                          text: 'Secure Eastern projects, earn up\nto 250k.',
                                          style: TextStyle(
                                            color: AppColors.textMuted,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ]
                                  )
                              ),
                            ),
                            Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.primaryGreen,
                                ),
                                child:  Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const ProspectInspector()
                                          )
                                      );
                                    },
                                    child: const Text(
                                      'Join Inspector',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                    child:  Column(
                      children: [
                        ProjectContractor()
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          ContinuePayment.showBlurredMenu(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppColors.primaryGreen,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Iconify(
                            'streamline-flex-color:blood-donate-drop',
                            size: 24,
                          ),
                          )
                        ),
                      ),
                    ),

                ],
              )
          )
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}