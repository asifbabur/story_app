import 'package:flutter/material.dart';
import 'package:my_story_app/customIcons.dart';
import 'package:my_story_app/features/home/data/data.dart';

class AppState extends ChangeNotifier {
  late PageController controller;
  ValueNotifier<double> _currentPage = ValueNotifier(images.length - 1.0);

  AppState() {
    controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      _currentPage.value = controller.page!;
      notifyListeners(); // 🔥 Notify UI of changes
    });
  }

  ValueNotifier<double> get currentPage => _currentPage;

  Widget buildTopBar() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 12.0, right: 12.0, top: 5.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(CustomIcons.menu, color: Colors.white, size: 30.0),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.search, color: Colors.white, size: 30.0),
              onPressed: () {}),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 46.0,
                fontFamily: "Calibre-Semibold",
                letterSpacing: 1.0,
              )),
          IconButton(
              icon: Icon(CustomIcons.option, size: 12.0, color: Colors.white),
              onPressed: () {}),
        ],
      ),
    );
  }

  Widget buildCategoryTag(String category, String count) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: category == "Animated"
                    ? Color.fromARGB(255, 90, 92, 187)
                    : Colors.blueAccent,
                borderRadius: BorderRadius.circular(20.0)),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                child: Text(category, style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(width: 15.0),
          Text(count, style: TextStyle(color: Colors.blueAccent)),
        ],
      ),
    );
  }

  Widget buildImage() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child:
                Image.asset("assets/image_02.jpg", width: 296.0, height: 222.0),
          ),
        ),
      ],
    );
  }
}
