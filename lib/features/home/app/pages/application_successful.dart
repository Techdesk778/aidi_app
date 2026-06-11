import 'package:aidi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ApplicationSuccessful extends StatelessWidget {
  const ApplicationSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhiteOpaque,
      body: Center(
        child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Application Successful\n',
                  style: TextStyle(
                    color: AppColors.forestGreenOpaque,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  )
                ),
                TextSpan(
                  text: 'kindly wait for approval',
                  style: TextStyle(
                    color: AppColors.forestGreenOpaque,
                    fontWeight: FontWeight.w300
                  )
                )
              ]
            )
        )
      ),
    );
  }
}
