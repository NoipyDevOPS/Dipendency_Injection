class AppConfig {
  String apiEndPoint;
  String title;
}

AppConfig appConfigFactory() => AppConfig() 
  ..apiEndPoint = 'api.heroes.com' 
  ..title = 'Dependency Injection';