import 'package:flutter/material.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key, required this.colorCubit});
  final colorCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: InkWell(
        onTap: () {
          colorCubit.changeSwitched(!colorCubit.isSwitched);
        },
        splashColor: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        highlightColor: Colors.blue.withOpacity(0.1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.scale(
                scale: 0.75,
                child: Switch(
                  activeColor: Colors.white,
                  activeTrackColor: Colors.blue,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.transparent,
                  value: colorCubit.isSwitched,
                  onChanged: (value) {
                    colorCubit.changeSwitched(value);
                  },
                ),
              ),
              const Text(
                "Change Theme",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
