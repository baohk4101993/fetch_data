import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // the default method name that will be generated
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() {
  $initGetIt(getIt);
}