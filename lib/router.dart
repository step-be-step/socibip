import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:socibip/features/auth/screens/login_screen.dart';
import 'package:socibip/features/home/home_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});
