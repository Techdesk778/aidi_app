// lib/features/home/app/pages/notification.dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/notification_card.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  // Local state for notifications
  final List<Map<String, dynamic>> _notifications = [
    {
      'title': 'Project update',
      'description': 'The Owerri Solar Grid has reached 45% funding',
      'timeAgo': '2min ago',
      'iconColor': AppColors.deepAmberGold,
      'isRead': false,
    },
    {
      'title': 'Donation received',
      'description': 'Thank you! Your donation of ₦25,000 was successful.',
      'timeAgo': '1 hour ago',
      'iconColor': AppColors.electricNeonGreen,
      'isRead': false,
    },
    {
      'title': 'New project launched',
      'description': 'The Aba Clean Water Initiative is now accepting supports.',
      'timeAgo': '2 days ago',
      'iconColor': AppColors.electricNeonGreen,
      'isRead': false,
    },
  ];

  void _markAllAsRead() {
    setState(() {
      for (var item in _notifications) {
        item['isRead'] = true;
      }
    });
  }

  void _markAsRead(int index) {
    setState(() {
      _notifications[index]['isRead'] = true;
    });
  }

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
        title: const Text(
          'Notification',
          style: TextStyle(
            color: AppColors.primaryGreen,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8, bottom: 8),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ..._notifications.asMap().entries.map((entry) {
                  int idx = entry.key;
                  var data = entry.value;
                  return Column(
                    children: [
                      NotificationCard(
                        title: data['title'],
                        description: data['description'],
                        timeAgo: data['timeAgo'],
                        iconColor: data['iconColor'],
                        isRead: data['isRead'],
                        onTap: () => _markAsRead(idx),
                      ),
                      const SizedBox(height: 12),
                    ],
                  );
                }),
                const SizedBox(height: 6),
                TextButton(
                  onPressed: _markAllAsRead,
                  child: const Text(
                    'MARK ALL AS READ',
                    style: TextStyle(
                      color: AppColors.forestGreenOpaque,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}