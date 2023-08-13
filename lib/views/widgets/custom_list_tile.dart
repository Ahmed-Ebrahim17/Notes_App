import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/snakbar.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        noteModel.title,
        style: const TextStyle(color: Colors.black, fontSize: 24),
      ),
      textColor: Colors.black,
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          noteModel.subTitle,
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
        onPressed: () {
          noteModel.delete();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          showSnakBar(context, 'Deleted', Colors.red);
        },
      ),
    );
  }
}
