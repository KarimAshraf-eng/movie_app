import 'package:flutter/material.dart';
import 'package:movie_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomSerchTextField()],
    );
  }
}
