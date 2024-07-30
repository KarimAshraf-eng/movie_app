import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/Features/home/presentation/managers/color/cupit.dart';
import 'package:movie_app/Features/home/presentation/managers/color/state.dart';
import 'package:movie_app/Features/setting/presentation/views/widget/change_theme_button.dart';

class SettingsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(builder: (context, state) {
      final colorCubit = context.read<ColorCubit>();
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ChangeThemeButton(colorCubit: colorCubit,)
            
          ],
        ),
      );
    });
  }
}
