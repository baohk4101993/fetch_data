// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/dio_service/dio_service.dart' as _i282;
import '../core/network/dio_client.dart' as _i393;
import '../repository/login_repository.dart' as _i374;
import '../repository/user_repository.dart' as _i1036;
import 'config.dart' as _i574;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioProvider = _$DioProvider();
  gh.factory<_i574.IConfig>(() => _i574.AppConfig());
  gh.singleton<_i361.Dio>(() => dioProvider.dio(gh<_i574.IConfig>()));
  gh.singleton<_i282.DioService>(() => _i282.DioService(gh<_i361.Dio>()));
  gh.singleton<_i1036.UserRepository>(
      () => _i1036.UserRepository(gh<_i282.DioService>()));
  gh.singleton<_i374.LoginRepository>(
      () => _i374.LoginRepository(gh<_i282.DioService>()));
  return getIt;
}

class _$DioProvider extends _i393.DioProvider {}
