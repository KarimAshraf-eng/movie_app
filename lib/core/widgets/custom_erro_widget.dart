import 'package:flutter/material.dart';

class CustomErroWidget extends StatelessWidget {
  const CustomErroWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage,style: const TextStyle(fontSize: 30,color: Colors.red),));
  }
}
