part of '../app_router.dart';

@TypedGoRoute<HomeScreenRouteData>(path: '/home', name: 'home')
class HomeScreenRouteData extends GoRouteData with $HomeScreenRouteData {
  const HomeScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
