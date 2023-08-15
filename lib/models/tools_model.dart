class ToolsModel {
  String title;
  String image;
  String info;
  String stack;
  String live;
  String github;
  ToolsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.live,
      required this.github});
}

List<ToolsModel> toolsModelList = [
  ToolsModel(
      title: 'Node-Auth',
      image: '',
      info:
          'A simple and secure user authentication system with user-register, user-login, email-verification and password recovery features.',
      stack: 'Javascript Nodejs MongoDB Express JWT NodeMailer',
      live: '',
      github: 'https://github.com/pozadkey/node-auth'),
  ToolsModel(
      title: 'Quick Button',
      image: '',
      info:
          'A Flutter package that provides multiple customizable buttons for quick use.',
      stack: 'Dart Flutter',
      live: 'http://pub.dev/packages/quick_button',
      github: 'https://github.com/pozadkey/quick_button'),
];
