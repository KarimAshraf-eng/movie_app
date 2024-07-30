import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/Features/home/presentation/managers/color/state.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/Utils/constants.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(InitialSelected(0));

  int selected = 0;
  bool isSwitched = false;

  void changedSelected(int index) {
    selected = index;
    emit(ChangedSelected(selected));
  }

  void changeSwitched(bool value) {
    isSwitched = value;
    emit(IsSwitched(isSwitched));
  }

  ThemeData get theme {
    return isSwitched
        ? ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme:
                const AppBarTheme().copyWith(backgroundColor: Colors.white))
        : ThemeData.dark().copyWith(
            scaffoldBackgroundColor: backGroundColor,
            appBarTheme:
                const AppBarTheme().copyWith(backgroundColor: backGroundColor));
  }

  Color get color => isSwitched ? Colors.white : backGroundColor;
  Color get logoColor => isSwitched ? Colors.blue : Colors.red;
}
