import 'package:flutter/material.dart';
import 'package:notes_app/animation/route_builder.dart';
import 'package:notes_app/views/notes_edit_view.dart';

import 'custom_list_tile.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          createRoute(
            const NotesEditView(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomListTile(),
            Text(
              'May 21,2022',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
