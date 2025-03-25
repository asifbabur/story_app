class StoryPage {
  final String title;
  final String content;

  StoryPage({required this.title, required this.content});
}

final List<StoryPage> storyPages = [
  StoryPage(
      title: 'Page 1',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
  StoryPage(
      title: 'Page 2',
      content:
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
  StoryPage(
      title: 'Page 3',
      content:
          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
];