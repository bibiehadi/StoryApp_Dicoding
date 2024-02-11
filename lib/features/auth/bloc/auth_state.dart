part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.intial() = _Initial;

  const factory AuthState.loginLoading() = _LoginLoading;
  const factory AuthState.loginFailed(String message) = _LoginFailed;
  const factory AuthState.loginSuccess(LoginResponseModel responseModel) =
      _LoginSuccess;

  const factory AuthState.registerLoading() = _RegisterLoading;
  const factory AuthState.registerFailed(String message) = _RegisterFailed;
  const factory AuthState.registerSuccess(RegisterResponseModel responseModel) =
      _RegisterSuccess;
}
