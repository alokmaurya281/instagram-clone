import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/providers/auth_provider.dart';
import 'package:instagram_clone/routes/router_config.dart';
import 'package:instagram_clone/utils/page_trasitions_builder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            // Customize the transition for Android
            TargetPlatform.android: CustomPageTransitionsBuilder(),

            // Customize the transition for iOS
            TargetPlatform.iOS: CustomPageTransitionsBuilder(),
          },
        ),
        primaryColor: const Color.fromRGBO(0, 106, 255, 1),
        colorScheme: const ColorScheme.light(
          secondary: Color.fromARGB(255, 100, 100, 100),
          primary: Colors.black,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
