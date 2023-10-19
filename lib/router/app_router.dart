// The route configuration.
import 'package:code_master/pages/auth_page.dart';
import 'package:code_master/pages/details_page.dart';
import 'package:code_master/pages/home_page.dart';
import 'package:code_master/pages/intro_page.dart';
import 'package:code_master/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/app_model.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const IntroPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
          GoRoute(
            path: 'auth',
            builder: (BuildContext context, GoRouterState state) {
              return const AuthPage();
            },
          ),
          GoRoute(
            path: 'login',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginPage();
            },
          ),
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) {
              App displayApp = state.extra as App;
              return DetailsPage(currentApp: displayApp);
            },
          ),
        ],
      ),
    ],
  );
}
