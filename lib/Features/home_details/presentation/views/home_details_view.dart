import 'package:flutter/material.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/Features/home_details/presentation/views/widgets/home_details_body.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeDetailsBody(
        movieModel: movieModel,
      ),
    );
  }
}
