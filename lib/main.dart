import 'package:flutter/material.dart';

void main() {
  runApp(const SoutApp());
}

class SoutApp extends StatelessWidget {
  const SoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SOUT',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF100F19),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFAA83FF),
          secondary: Color(0xFF5688FF),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Row(
                children: [
                  Icon(Icons.graphic_eq,
                      color: Color(0xFFAA83FF), size: 35),
                  SizedBox(width: 10),
                  Text(
                    'SOUT',
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              const Text(
                'أهلاً بك في SOUT 🎵',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'اسمع أغانيك وافهم كل كلمة.',
                style: TextStyle(color: Colors.white60),
              ),
              const SizedBox(height: 28),
              TextField(
                decoration: InputDecoration(
                  hintText: 'ابحث عن أغنية أو فنان...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color(0xFF242132),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'اكتشف الموسيقى',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF563A91),
                      Color(0xFF252C60),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.translate, size: 38),
                    SizedBox(height: 18),
                    Text(
                      'افهم الأغنية بلغتك',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'كلمات متزامنة وترجمة سطر بسطر.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Center(
                child: Text(
                  'LISTEN • UNDERSTAND • FEEL',
                  style: TextStyle(
                    color: Colors.white38,
                    letterSpacing: 2,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
