class App {
  String name;
  String description;
  String imagePath;
  String client;
  String releaseDateAndroid;
  String releaseDateIOS;

  App({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.client,
    required this.releaseDateAndroid,
    required this.releaseDateIOS,
  });

  String get _name => name;
  String get _description => description;
  String get _imagePath => imagePath;
  String get _client => client;
  String get _releaseDateAndroid => releaseDateAndroid;
  String get _releaseDateIOS => releaseDateIOS;
}
