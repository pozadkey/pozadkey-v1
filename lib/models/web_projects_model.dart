class WebProjectsModel {
  String title;
  String image;
  String info;
  String stack;
  String live;
  String github;
  WebProjectsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.live,
      required this.github});
}

List<WebProjectsModel> webProjectsModelList = [
  WebProjectsModel(
      title: 'Mediweb',
      image: 'assets/images/mediweb.PNG',
      info: 'A simple web-based medical diagnostic system.',
      stack: 'Dart Flutter Riverpod Firebase  Cloud-Firestore',
      live: 'http://medi-web.netlify.app',
      github: 'https://github.com/pozadkey/mediweb'),
  WebProjectsModel(
      title: 'Kenbayane',
      image: 'assets/images/kenbayane.png',
      info: 'A portfolio website for a renewable energy company.',
      stack: 'Dart Flutter',
      live: 'https://kenbayanerenewable.netlify.app',
      github: 'https://github.com/pozadkey/kenbayane'),
];
