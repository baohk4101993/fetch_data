import 'package:injectable/injectable.dart';

abstract class IConfig {
  String get baseUrl;
}

@Injectable(as: IConfig)
class AppConfig extends IConfig {
  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://reqres.in";
}