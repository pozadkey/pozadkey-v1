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
      stack: 'Flutter  Firebase  Cloud-Firestore',
      live: 'http://medi-web.netlify.app',
      github: 'https://github.com/pozadkey/mediweb'),
  WebProjectsModel(
      title: 'Node-Auth',
      image: '',
      info:
          'A simple and secure user authentication system with user-register, user-login, email-verification and password recovery features.',
      stack: 'Nodejs MongoDB Express',
      live: '',
      github: 'https://github.com/pozadkey/node-auth'),
  WebProjectsModel(
      title: 'Kenbayane',
      image: 'assets/images/kenbayane.png',
      info: 'A portfolio website for a renewable energy company.',
      stack: 'Flutter',
      live: 'https://kenbayanerenewable.netlify.app',
      github: 'https://github.com/pozadkey/kenbayane'),
];
