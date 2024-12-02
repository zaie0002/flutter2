import 'package:flutter/material.dart';
import 'home_page.dart';
import 'data_page.dart';
import 'contact_page.dart';
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.blueGrey, fontSize: 18),
          bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
          titleLarge: TextStyle(color: Colors.deepPurple, fontSize: 22),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/data': (context) => DataPage(),
        '/contact': (context) => const ContactPage(),
      },
    ),
  );
}
