import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest(); // Create a CookieRequest instance
        return request;
      },
      child: MaterialApp(
        title: 'My E-Commerce Store',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(secondary: const Color.fromARGB(255, 252, 252, 252)),
        ),
        home: LoginPage(), // Your home widget
      ),
    );
  }
}