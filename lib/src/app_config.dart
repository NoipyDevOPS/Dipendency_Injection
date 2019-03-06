class AppConfig {
  String apiEndPoint;
  String title;
}

AppConfig appConfig() => AppConfig() 
  ..apiEndPoint = 'api.heroes.com' 
  ..title = 'Dependency Injection';