import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part "login_response_model.g.dart";

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    required String token,
    required String error
}) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);


}