import 'package:angular/angular.dart';

import '../app_config.dart';
import '../heroes/hero_service_provider.dart';
import '../heroes/hero_service.dart';
import '../logger_service.dart';
import '../user_service.dart';

abstract class _Base {
  final Logger logger;
  _Base(this.logger);

  void log(String msg) {
    logger?.fine(msg);
  }
}

@Component(
  selector: 'class-provider',
  template: 'ClassProvider: {{logger}}',
  providers: [ClassProvider(Logger)],
)

class ClassProviderComponent extends _Base {
  ClassProviderComponent(Logger logger) : super(logger);
}

class BetterLogger extends Logger {
  String get id => 'BetterLogger';
}

@Component()

class ClassProviderUseClassComponent extends _Base {
  ClassProviderUseClassComponent(Logger logger) : super(logger);
}