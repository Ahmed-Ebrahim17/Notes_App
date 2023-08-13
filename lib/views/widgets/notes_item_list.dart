import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesItemList extends StatelessWidget {
  const NotesItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return NoteItem(
                noteModel: notes[index],
              );
            });
      },
    );
  }
}
