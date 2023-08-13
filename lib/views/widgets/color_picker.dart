import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../cubits/cubit/color_cubit_cubit.dart';

void colorPicekr(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            contentPadding: const EdgeInsets.all(0.0),
            titlePadding: const EdgeInsets.all(0.0),
            content: Wrap(
              children: [
                ColorPicker(
                  pickerColor: BlocProvider.of<ColorCubit>(context).mainColor,
                  onColorChanged: (color) {
                    BlocProvider.of<ColorCubit>(context).changeMainColor(color);
                  },
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Done'),
              )
            ],
          ));
}
