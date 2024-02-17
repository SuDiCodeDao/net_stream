import 'package:go_router/go_router.dart';
import 'package:net_stream/features/auth/ui/screens/sign_in_screen.dart';
import 'package:net_stream/features/home/ui/home_screen.dart';

class RouteName {
  static const String home = '/';
  static const String signIn = '/signin';
  static const String search = '/search';
  static const String profile = '/profile';
  static const String download = '/download';
  static const String bookmark = '/bookmark';
  static const String error404 = '/404';
  static const String movieDetail = '/movie/:id';
  static const String trending = '/trending';
  static const String topRated = '/top_rated';
  static const String upComing = '/up_coming';
  static const String latest = '/latest';
  static const String play = '/play/:id';
}

final router = GoRouter(
    redirect: (context, state) {
      return RouteName.signIn;
    },
    routes: [
      GoRoute(
          path: RouteName.home,
          builder: (context, state) => const HomeScreen()),
      GoRoute(
          path: RouteName.signIn, builder: (context, state) => SignInScreen()),
    ]);
