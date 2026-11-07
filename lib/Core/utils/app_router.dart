import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project/Core/utils/service_locator.dart';
import 'package:project/Features/Splash/presentation/views/SplashView.dart';
import 'package:project/Features/home/data/Models/book_model/book_model.dart';
import 'package:project/Features/home/data/repos/homo_repo_impl.dart';
import 'package:project/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:project/Features/home/presentation/views/book_details_view.dart';
import 'package:project/Features/home/presentation/views/home_view.dart';
import 'package:project/Features/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static final String kHomeView = '/homeView';

  static final String kBookDetailsView = '/bookDetailsView';

  static final String kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(homoRepoImpl: getIt.get<HomoRepoImpl>()),
          child:  BookDetailsView(book:state.extra as BookModel ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
