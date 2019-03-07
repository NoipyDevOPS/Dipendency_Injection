import 'package:angular/angular.dart';

const appTitleToken = OpaqueToken<String>('app.title');

const appTitle = 'Dependency Injection';

const appConfigMap = {
  'apiEndpoint': 'api.heroes.com',
  'title': 'Dependency Injection',
  // ...
};

const appConfigMapToken = OpaqueToken<Map>('app.config');

class AppConfig {
  String apiEndPoint;
  String title;
}

AppConfig appConfigFactory() => AppConfig() 
  ..apiEndPoint = 'api.heroes.com' 
  ..title = 'Dependency Injection';