import 'package:fetch_data/model/login_response_model.dart';
import 'package:fetch_data/model/state/login_state.dart';
import 'package:fetch_data/repository/login_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../resource/result.dart';

class LoginCubit extends Cubit<LoginState> {
	final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    final result = await _loginRepository.login();
    if (result is Success<LoginResponseModel>) {
      emit(LoginState.success(result.data.token));
    } else if (result is Error<LoginResponseModel>) {
      emit(LoginState.failure(result.exception.toString()));
    }
  }
}