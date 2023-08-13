import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/cubit/color_cubit_cubit.dart';
import 'package:notes_app/views/widgets/color_picker.dart';
import 'package:notes_app/views/widgets/snakbar.dart';

import '../../models/note_model.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  NoteModel? noteModel;
  String? title;
  String? subtitle;
  bool isLoading = false;

  List months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  var now = DateTime.now();
  final f = DateFormat('dd,yyyy');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              text: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onSaved: (value) {
                subtitle = value;
              },
              text: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 30,
            ),
            const ColorItem(text: 'Pick color'),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<AddNoteCubit, AddNoteStates>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPress: () {
                    if (formKey.currentState!.validate()) {
                      formValidate(context);
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }

  void formValidate(BuildContext context) {
    formKey.currentState!.save();
    var noteModel = NoteModel(
        title: title!,
        subTitle: subtitle!,
        date: ('${months[now.month - 1]} ${f.format(DateTime.now())}'),
        color: BlocProvider.of<ColorCubit>(context).mainColor.value);
    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
    showSnakBar(context, 'Added', Colors.green);
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          label: Text(text),
          icon: const Icon(
            Icons.colorize,
          ),
          onPressed: () {
            colorPicekr(context);
          },
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
