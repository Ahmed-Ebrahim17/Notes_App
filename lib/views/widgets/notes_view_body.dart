import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_item_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            CustomAppBar(
              icon: Icons.search,
              title: 'Notes',
              action: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: NotesItemList()),
          ],
        ),
      ),
    );
  }
}
