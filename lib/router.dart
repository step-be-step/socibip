import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:socibip/features/auth/screens/login_screen.dart';
import 'package:socibip/features/community/screen/community_screen.dart';
import 'package:socibip/features/community/screen/create_community_screen.dart';
import 'package:socibip/features/home/home_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  '/create-community': (_) =>
      const MaterialPage(child: CreateCommunityScreen()),
  '/bp/:name': (route) => MaterialPage(
        child: CommunitiesScreen(
          name: route.pathParameters['name']!,
        ),
      ),
  // если нужно использовать вложенный маршрут
  // '/bp/:name/:id': (route) => MaterialPage(
  //       child: CommunitiesScreen(
  //         name: route.pathParameterд['id']!,
  //       ),
  //     ),
});
