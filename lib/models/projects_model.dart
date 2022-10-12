class Projects {
  String title;
  String info;
  String stack1;
  String stack2;
  String stack3;
  String platform;
  String playstore;
  String appstore;
  String live;
  String github;
  Projects(
      {required this.title,
      required this.info,
      required this.stack1,
      required this.stack2,
      required this.stack3,
      required this.platform,
      required this.playstore,
      required this.appstore,
      required this.live,
      required this.github});
}

List<Projects> projectsList = [
  Projects(
      title: 'Tapcapitals',
      info:
          'A banking website with a dashboard displaying dummy dyamic data. It contains a login page for user and admin to manipulate the data stored in the database.',
      stack1: 'Flutter',
      stack2: 'Firebase',
      stack3: '',
      platform: 'WEB',
      playstore: '',
      appstore: '',
      live: 'https://tapcapitals.com',
      github: ''),
  Projects(
      title: 'OOU-LLB21',
      info:
          'A yearbook application built for a univesrsity\'s law faculty.  Built for Android and iOS platforms, it displays hard-coded data about the faculty and its students.',
      stack1: 'Flutter',
      stack2: '',
      stack3: '',
      platform: 'ANDROID iOS',
      playstore:
          'https://play.google.com/store/apps/details?id=com.pozadkey.oou_llb_21',
      appstore: 'https://apps.apple.com/ng/app/oou-llb21/id1632992447',
      live: '',
      github: 'https://github.com/pozadkey/oou-llb-21'),
  Projects(
      title: 'Kenbayane',
      info: 'A portfolio website for a renewable energy company.',
      stack1: 'Flutter',
      stack2: '',
      stack3: '',
      platform: 'WEB',
      playstore: '',
      appstore: '',
      live: 'https://kenbayanerenewable.com',
      github: 'https://github.com/pozadkey/kenbayane'),
  Projects(
      title: 'Funto',
      info:
          'Landing page for a software development company. This project was an experiment with Flutter in web developement.',
      stack1: 'Flutter',
      stack2: '',
      stack3: '',
      platform: 'WEB',
      playstore: '',
      appstore: '',
      live: 'https://funto.netlify.app',
      github: 'https://github.com/pozadkey/funto'),
  Projects(
    title: 'The Backyard Concert',
    info:
        'An event online landing page containing information and purchase of online tickets via Paystack links.',
    stack1: 'Flutter',
    stack2: '',
    stack3: '',
    platform: 'WEB',
    playstore: '',
    appstore: '',
    live: 'https://thebackyardconcert.netlify.app',
    github: '',
  ),
];
