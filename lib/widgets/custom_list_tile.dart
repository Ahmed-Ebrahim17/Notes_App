import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Flutter Tips',
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
      textColor: Colors.black,
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          'Build Your Career with\nTharwat Samy',
          style: TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
        ),
      ),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: const Icon(
          FontAwesomeIcons.trash,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
