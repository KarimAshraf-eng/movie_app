import 'package:flutter/material.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/Features/home_details/presentation/views/widgets/details_widget.dart';
import 'package:movie_app/Features/home_details/presentation/views/widgets/image_widget.dart';
import 'package:movie_app/Features/home_details/presentation/views/widgets/options_widget.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         ImageWidget(movieModel: movieModel,),
         DetailsWidget(movieModel: movieModel,),
         OptionsWidget(movieModel: movieModel,),
      ],
    );
  }
}
