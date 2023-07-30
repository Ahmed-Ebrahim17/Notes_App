import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.icon,
    required this.title,
    required this.action,
  });
  final String title;
  final IconData icon;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        CustomSearchIcon(
          icon: icon,
          action: action,
        )
      ],
    );
  }
}
