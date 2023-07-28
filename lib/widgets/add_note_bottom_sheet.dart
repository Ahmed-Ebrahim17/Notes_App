import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(
              text: 'Title',
              padding: 16,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              text: 'Content',
              padding: 50,
            ),
            SizedBox(
              height: 80,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}