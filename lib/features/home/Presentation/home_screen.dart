import 'package:flutter/material.dart';
import 'package:my_story_app/features/home/data/data.dart';
import 'package:my_story_app/features/home/widgets/custom_scroll_view.dart';
import 'app_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late AppState appState;

  @override
  void initState() {
    super.initState();
    appState = AppState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 94, 66, 129),
            Color.fromARGB(255, 46, 71, 45)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                appState.buildTopBar(),
                appState.buildSectionTitle("Trending"),
                appState.buildCategoryTag("Animated", "25+ Stories"),
                Stack(
                  children: [
                    ValueListenableBuilder<double>(
                      valueListenable: appState.currentPage,
                      builder: (context, value, child) {
                        return CardScrollWidget(value);
                      },
                    ),
                    Positioned.fill(
                      child: PageView.builder(
                        itemCount: images.length,
                        controller: appState.controller,
                        reverse: true,
                        itemBuilder: (context, index) => Container(),
                      ),
                    ),
                  ],
                ),
                appState.buildSectionTitle("Favourite"),
                appState.buildCategoryTag("Latest", "9+ Stories"),
                SizedBox(height: 20.0),
                appState.buildImage(),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
