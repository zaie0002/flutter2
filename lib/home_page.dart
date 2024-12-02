import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/background.avif'), // Correct path
    fit: BoxFit.cover,
  ),
),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
              child: Center(
                child: Transform.scale(
                  scale: 1.2,
                  child: Text(
                    'Welcome to the Home Page',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          surface: Colors.black,
          onSurface: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomePage(),
    ),
  );
}
