class Projects {
  String title;
  String image;
  String info;
  String stack;
  String playstore;
  String appstore;
  String live;
  String github;
  Projects(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.playstore,
      required this.appstore,
      required this.live,
      required this.github});
}

List<Projects> projectsList = [
  Projects(
      title: 'Tapcapitals',
      image: 'assets/images/tapcapitals.png',
      info:
          'A banking website with a dashboard displaying dummy dynamic data. It contains a login page for user and admin to manipulate the data stored in the database.',
      stack: 'Web  Flutter  Firebase  Cloud-Firestore ',
      playstore: '',
      appstore: '',
      live: 'https://tapcapitals.com',
      github: ''),
  Projects(
      title: 'Node-Auth',
      image: '',
      info:
          'A simple and secure user authentication system with user-register, user-login, email-verification and password recovery features.',
      stack: 'Nodejs MongoDB Express',
      playstore: '',
      appstore: '',
      live: '',
      github: 'https://github.com/pozadkey/node-auth'),
  Projects(
      title: 'OOU-LLB21',
      image: 'assets/images/oou-llb-21-iphone.png',
      info:
          'A yearbook application built for a university\'s law faculty.  Built for Android and iOS platforms, it displays hard-coded data about the faculty and its students.',
      stack: 'Android  iOS  Flutter',
      playstore:
          'https://play.google.com/store/apps/details?id=com.pozadkey.oou_llb_21',
      appstore: 'https://apps.apple.com/ng/app/oou-llb21/id1632992447',
      live: '',
      github: 'https://github.com/pozadkey/oou-llb-21'),
  Projects(
      title: 'Kenbayane',
      image: 'assets/images/kenbayane.png',
      info: 'A portfolio website for a renewable energy company.',
      stack: 'Web  Flutter',
      playstore: '',
      appstore: '',
      live: 'https://kenbayanerenewable.com',
      github: 'https://github.com/pozadkey/kenbayane'),
  Projects(
      title: 'Funto',
      image: 'assets/images/funto.png',
      info:
          'Landing page for a software development company. This project was an experiment with Flutter in web developement.',
      stack: 'Web  Flutter',
      playstore: '',
      appstore: '',
      live: 'https://funto.netlify.app',
      github: 'https://github.com/pozadkey/funto'),
  Projects(
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
