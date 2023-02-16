import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:socibip/features/auth/screens/login_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});
