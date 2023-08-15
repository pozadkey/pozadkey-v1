class MobileProjectsModel {
  String title;
  String image;
  String info;
  String stack;
  String playstore;
  String appstore;
  String github;
  MobileProjectsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.playstore,
      required this.appstore,
      required this.github});
}

List<MobileProjectsModel> mobileProjectsList = [
  MobileProjectsModel(
      title: 'OOU-LLB21',
      image: 'assets/images/oou-llb.JPG',
      info:
          'A yearbook application built for a university\'s law faculty.  Built for Android and iOS platforms, it displays hard-coded data about the faculty and its students.',
      stack: 'Dart Flutter',
      playstore:
          'https://play.google.com/store/apps/details?id=com.pozadkey.oou_llb_21',
      appstore: 'https://apps.apple.com/ng/app/oou-llb21/id1632992447',
      github: 'https://github.com/pozadkey/oou-llb-21'),
];
