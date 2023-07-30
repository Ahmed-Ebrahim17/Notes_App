import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
