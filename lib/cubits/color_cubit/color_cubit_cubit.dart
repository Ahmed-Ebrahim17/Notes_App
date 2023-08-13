import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'color_cubit_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(ColorCubitInitial());

  Color mainColor = Colors.blue;

  void changeMainColor(Color color) {
    mainColor = color;
    emit(ColorSuccessful());
  }
}
