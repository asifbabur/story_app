import 'package:flutter/material.dart';
import 'package:my_story_app/features/home/Presentation/home_screen.dart';
import 'package:my_story_app/features/story/presentation/story_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        '/': (context) => HomeScreen(),
        '/story': (context) => StoryScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
