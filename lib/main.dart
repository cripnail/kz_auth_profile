import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kz_auth_profile/screens/error_page.dart';
import 'package:kz_auth_profile/screens/profile_page.dart';
import 'package:kz_auth_profile/screens/register_page.dart';

import 'screens/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 24.0,
            ),
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 46.0,
            color: Colors.blue.shade700,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: const TextStyle(fontSize: 18.0),
        ),
      ),
      // home: LoginPage(),
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/profile': (context) {
          final args = ModalRoute.of(context)?.settings.arguments;
          final user =
              args as User?; // Adjust the type based on your user object type

          return user != null
              ? ProfilePage(user: user)
              : const ErrorPage(); // Handle null case with your ErrorPage widget
        },
      },
    );
  }
}
