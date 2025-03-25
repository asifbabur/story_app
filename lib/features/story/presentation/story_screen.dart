import 'package:flutter/material.dart';
import 'package:my_story_app/common/extensions.dart';
import 'package:my_story_app/features/home/Presentation/app_state.dart';
import 'package:my_story_app/features/story/data/story_model.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  late AppState appState;

  @override
  void initState() {
    super.initState();
    appState = AppState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appState.buildTopBar(),
          5.height,
          appState.buildSectionTitle("Story 1"),
          5.height,
          Expanded(
            child: PageView(
              children: storyPages.map((storyPage) {
                return Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(storyPage.title,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text(storyPage.content, textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
