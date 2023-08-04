class WebProjectsModel {
  String title;
  String image;
  String info;
  String stack;
  String playstore;
  String appstore;
  String live;
  String github;
  WebProjectsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.playstore,
      required this.appstore,
      required this.live,
      required this.github});
}

List<WebProjectsModel> webProjectsModelList = [
  WebProjectsModel(
      title: 'Tapcapitals',
      image: 'assets/images/tapcapitals.png',
      info:
          'A banking website with a dashboard displaying dummy dynamic data. It contains a login page for user and admin to manipulate the data stored in the database.',
      stack: 'Web  Flutter  Firebase  Cloud-Firestore ',
      playstore: '',
      appstore: '',
      live: 'https://tapcapitals.com',
      github: ''),
  WebProjectsModel(
      title: 'Node-Auth',
      image: '',
      info:
          'A simple and secure user authentication system with user-register, user-login, email-verification and password recovery features.',
      stack: 'Nodejs MongoDB Express',
      playstore: '',
      appstore: '',
      live: '',
      github: 'https://github.com/pozadkey/node-auth'),
  WebProjectsModel(
      title: 'Kenbayane',
      image: 'assets/images/kenbayane.png',
      info: 'A portfolio website for a renewable energy company.',
      stack: 'Web  Flutter',
      playstore: '',
      appstore: '',
      live: 'https://kenbayanerenewable.com',
      github: 'https://github.com/pozadkey/kenbayane'),
  WebProjectsModel(
      title: 'Funto',
      image: 'assets/images/funto.png',
      info:
          'Landing page for a software development company. This project was an experiment with Flutter in web developement.',
      stack: 'Web  Flutter',
      playstore: '',
      appstore: '',
      live: 'https://funto.netlify.app',
      github: 'https://github.com/pozadkey/funto'),
  WebProjectsModel(
    title: 'The Backyard Concert',
    image: 'assets/images/backyard.png',
    info:
        'An event landing page containing information and purchase of online tickets via Paystack links.',
    stack: 'Web  Flutter  Firebase  Cloud-Firestore ',
    playstore: '',
    appstore: '',
    live: 'https://thebackyardconcert.netlify.app',
    github: '',
  ),
];
