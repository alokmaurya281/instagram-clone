import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/message_screen.dart';
import 'package:instagram_clone/pages/auth_pages/login.dart';
import 'package:instagram_clone/pages/main_screen.dart';
import 'package:instagram_clone/pages/not_found.dart';
import 'package:instagram_clone/providers/auth_provider.dart';
import 'package:instagram_clone/routes/router_constants.dart';
import 'package:provider/provider.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: RouterConstants.home,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MainScreen(
              index: 0,
            ),
          );
        },
      ),
      GoRoute(
        name: RouterConstants.login,
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        name: RouterConstants.reels,
        path: '/reels',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MainScreen(
              index: 3,
            ),
          );
        },
      ),
      GoRoute(
        name: RouterConstants.additems,
        path: '/addpost',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MainScreen(
              index: 2,
            ),
          );
        },
      ),
      GoRoute(
        name: RouterConstants.profile,
        path: '/profile',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MainScreen(
              index: 4,
            ),
          );
        },
      ),
      GoRoute(
        name: RouterConstants.chats,
        path: '/chats',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: MessageScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: RouterConstants.search,
        path: '/search',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MainScreen(
              index: 1,
            ),
          );
        },
      ),
    ],
    redirect: (context, state) {
      bool isAuth = context.read<AuthProvider>().isAuthenticated;
      if (!isAuth) {
        return '/login';
      }
      return null;
    },
    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: NotFoundPage(
          error: state.error!.message,
        ),
      );
    },
  );
}
