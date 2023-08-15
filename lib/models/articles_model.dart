class ArticlesModel {
  String title;

  String live;
  ArticlesModel({required this.title, required this.live});
}

List<ArticlesModel> articlesModelList = [
  ArticlesModel(
      title: 'Create And Publish Dart Package For Flutter',
      live:
          'https://dev.to/pozadkey/create-and-publish-dart-package-for-flutter-5ff8'),
  ArticlesModel(
      title: 'Publishing Flutter App To Google Play Store - Part 1',
      live:
          'https://dev.to/pozadkey/publishing-flutter-app-to-google-play-store-part-1-325h'),
  ArticlesModel(
      title: 'Publishing Flutter App To Google Play Store - Part 2',
      live:
          'https://dev.to/pozadkey/publishing-flutter-app-to-google-play-store-part-2-nkh'),
];
