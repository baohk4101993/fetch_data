import 'package:fetch_data/core/dio_service/dio_service.dart';
import 'package:fetch_data/model/resource/result.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoginRepository {
	final DioService dioService;

  LoginRepository(this.dioService);

  Future<Result<bool>> login() async {
    try {
      final result = await dioService.login();
      return Success(data: result);
    } catch (e) {
      return Error(exception: Exception("Login Failure"));
    }
  }
}