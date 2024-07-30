import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomSerchTextField extends StatelessWidget {
  const CustomSerchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
                opacity: 0.4,
                child: Icon(
                  FontAwesome.searchengin_brand,
                  size: 30,
                )),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
