import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/snakbar.dart';

import '../../cubits/cubit/color_cubit_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});

  final NoteModel noteModel;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;

  String? subTitle;
  int? color;

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
                  widget.noteModel.title = title ?? widget.noteModel.title;
                  widget.noteModel.subTitle =
                      subTitle ?? widget.noteModel.subTitle;
                  widget.noteModel.color =
                      BlocProvider.of<ColorCubit>(context).mainColor.value ??
                          widget.noteModel.color;
                  widget.noteModel.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                  showSnakBar(context, 'Editied', Colors.blue);
                }),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                onChanged: (data) {
                  title = data;
                },
                text: 'Title'),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (data) {
                subTitle = data;
              },
              text: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            const ColorItem(
              text: 'Change color',
            ),
          ],
        ),
      ),
    );
  }
}
