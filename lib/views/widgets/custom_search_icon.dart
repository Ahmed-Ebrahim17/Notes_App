import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, required this.action});
  final IconData icon;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: IconButton(
        splashRadius: 21,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: Icon(icon),
        onPressed: action,
      ),
    );
  }
}
