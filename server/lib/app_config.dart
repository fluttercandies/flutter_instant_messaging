import 'package:aqueduct/aqueduct.dart';
import 'package:server/server.dart';

class AppConfig extends Configuration {
  AppConfig(String path) : super.fromFile(File(path));

  int port;

  DatabaseConfiguration database;
}
