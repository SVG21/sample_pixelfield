import 'package:auto_route/auto_route.dart';
import 'package:sample_pixelfield/feature/sign_in/presentation/sign_in_screen.dart';
import 'package:sample_pixelfield/feature/collection/presentation/collection_screen.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/collection_details_screen.dart';
import 'package:sample_pixelfield/feature/home/presentation/home_screen.dart';
import 'package:sample_pixelfield/feature/intro/presentation/splash_screen.dart';
import 'package:sample_pixelfield/feature/intro/presentation/welcome_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive(); // Adaptive navigation

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: SplashRoute.page), // Default screen
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CollectionRoute.page),
    AutoRoute(page: CollectionDetailRoute.page),
    AutoRoute(page: WelcomeRoute.page),

    // Custom transitions
    CustomRoute(
      page: SignInRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 600,
    ),
  ];
}
