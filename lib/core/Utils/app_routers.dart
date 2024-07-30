import 'package:go_router/go_router.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';
import 'package:movie_app/Features/home/presentation/views/home_view.dart';
import 'package:movie_app/Features/home_details/presentation/views/home_details_view.dart';
import 'package:movie_app/Features/search/presentation/views/search_view.dart';
import 'package:movie_app/Features/setting/presentation/views/setting_view.dart';
import 'package:movie_app/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const homeView = "/homeView";
  static const homeDetailsView = "/homeDetailsView";
  static const searchView = "/searchView";
  static const settinghView = "/settingView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: homeDetailsView,
        builder: (context, state) => HomeDetailsView(
          movieModel: state.extra as MovieModel,),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: settinghView,
        builder: (context, state) => const SettingView(),
      ),
    ],
  );
}
