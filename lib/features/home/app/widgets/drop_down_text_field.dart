import 'package:aidi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DropdownTextField extends StatefulWidget {
  const DropdownTextField({super.key});

  @override
  State<DropdownTextField> createState() => _DropdownTextFieldState();
}

class _DropdownTextFieldState extends State<DropdownTextField> {
  final List<String> _options = [
    'Imo Tech Hub',
    'Ebonyi Rice Mill',
    'Enugu Hospital',
    'Abia Poultry Farm',
    'Anambra Transport',
  ];
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      menuMaxHeight: 200,
      decoration: InputDecoration(
        hintText: 'Select project',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.textMuted,
            width: 1.0,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.textMuted,
            width: 1.0,
          ),
        ),
        // Base border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      value: _selectedValue,
      items: _options.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;
        });
      },
    );
  }
}