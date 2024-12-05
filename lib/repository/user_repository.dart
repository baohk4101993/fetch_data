import 'package:fetch_data/core/dio_service/dio_service.dart';
import 'package:fetch_data/model/apiresponse.dart';
import 'package:fetch_data/model/resource/result.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRepository {
  final DioService dioService;

  UserRepository(this.dioService);

  Future<Result<ApiResponse>> getFetchDataUser() async {
    try {
      final result = dioService.fecthData();
      return Success(data: result);
    } catch (e) {
      return Error(exception: Exception("Fetch Data Failure"));
    }
  }
}