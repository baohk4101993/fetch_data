import 'package:fetch_data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'apiresponse.freezed.dart';
part "apiresponse.g.dart";

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse({
    required int page,
    required int per_page,
    required int total,
    required int total_pages,
    required List<User> data,
  }) = _apiresponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}

