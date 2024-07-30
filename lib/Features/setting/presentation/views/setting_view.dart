import 'package:flutter/material.dart';
import 'package:movie_app/Features/setting/presentation/views/widget/settings_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body:  SettingsBody(),
    );
  }
}