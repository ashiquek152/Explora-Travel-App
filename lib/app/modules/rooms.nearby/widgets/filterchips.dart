import 'package:flutter/material.dart';
import 'package:project_2/app/modules/widgets/colors.dart';
import 'package:project_2/app/modules/widgets/text.customized.dart';

class FilterChipCustom extends StatelessWidget {
  const FilterChipCustom({
    Key? key,
    required this.onTap,
    required this.text, required this.visibility,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final bool visibility;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: TextCustomized(
        text: text,
        textSize: 12,
        textColor: white,
      ),
      onSelected: (value) {
        onTap;
      },
      avatar: Visibility(
        visible: visibility,
        child: const Icon(
          Icons.done,
          color: amber,
          size: 20,
        ),
      ),
      backgroundColor: darkblue,
      selectedColor: red,
    );
  }
}
