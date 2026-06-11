import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../../../core/utils/app_colors.dart';

class ProjectContractor extends StatefulWidget {
  const ProjectContractor({super.key});

  @override
  State<ProjectContractor> createState() => _ProjectContractorState();
}

class _ProjectContractorState extends State<ProjectContractor> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Padding(
                    padding: EdgeInsets.only(top: 2.0, right: 8.0),
                    child: Icon(
                      Icons.engineering_outlined,
                      color: Colors.lightBlue,
                    ),
                  ),


                  Expanded(
                    child: RichText(
                        text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Become a Project Contractor\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  )
                              ),
                              TextSpan(
                                text: 'Are you a professional contractor on\nany construction field do not miss out\n join now',
                                style: TextStyle(
                                  color: AppColors.textMuted,
                                  fontSize: 12,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ],
              ),
            ),

            // --- RIGHT SIDE: BUTTON ---
            GestureDetector(
              onTap: () { },
              child: Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryGreen,
                  ),
                  child: const Center(
                    child: Text(
                      'Join Contractor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}