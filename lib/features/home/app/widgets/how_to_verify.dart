import 'package:aidi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HowToVerify extends StatelessWidget {
  const HowToVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildVerifyStep(
          number: '1',
          title: 'Inspect project around you',
          description: 'You will be notified on recent project work stream that needs inspection, we only have 5 slots so fastest fingers.',
        ),
        _buildVerifyStep(
          number: '2',
          title: 'Visit the project site',
          description: 'Physically visit the location provided in the notification to verify the current state of the project.',
        ),
        _buildVerifyStep(
          number: '3',
          title: 'Upload evidence',
          description: 'Take clear photos and videos of the project milestones and upload them through the app for verification.',
        ),
        _buildVerifyStep(
          number: '4',
          title: 'Earn your rewards',
          description: 'Once your inspection is verified by the community, your reward will be credited to your wallet.',
        ),
      ],
    );
  }

  Widget _buildVerifyStep({
    required String number,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
          color: AppColors.pureWhite,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // The Number Container
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Text(
                    number,
                    style: TextStyle(
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Text Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        height: 1.4,
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
}
