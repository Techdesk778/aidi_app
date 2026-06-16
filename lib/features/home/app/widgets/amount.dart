import 'package:aidi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Amount extends StatefulWidget {

  final Function(String) onAmountSelected;

  const Amount({
    super.key,
    required this.onAmountSelected,
  });

  @override
  State<Amount> createState() => _AmountState();
}

class _AmountState extends State<Amount> {

  int selectedIndex = -1;


  final List<String> amounts = ['₦5k', '₦10k', '₦50k'];


  final List<String> rawValues = ['5000', '10000', '50000'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: amounts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });


              widget.onAmountSelected(rawValues[index]);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? AppColors.primaryGreen : AppColors.textMuted.withOpacity(0.3),
                  width: isSelected ? 2.0 : 1.0,
                ),
                color: isSelected ? AppColors.primaryGreen.withOpacity(0.1) : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  amounts[index],
                  style: TextStyle(
                    color: isSelected ? AppColors.primaryGreen : AppColors.navyBlack,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}