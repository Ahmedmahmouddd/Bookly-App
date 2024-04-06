import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/HomeView', builder: (context, state) => const HomeView()),
      GoRoute(
          path: '/BooksDetailsView',
          builder: (context, state) => const BookDetailsView()),
      GoRoute(
          path: '/SearchView', builder: (context, state) => const SearchView()),
    ],
  );
}
