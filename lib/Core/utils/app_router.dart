import 'package:go_router/go_router.dart';
import 'package:project/Features/Splash/presentation/views/SplashView.dart';
import 'package:project/Features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static final String kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    ],
  );
}
