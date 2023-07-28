import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            CustomAppBar(
                icon: Icons.check,
                title: 'Edit Note',
                action: () {
                  Navigator.pop(context);
                }),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(text: 'Title'),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              text: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
