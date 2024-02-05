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

// abstract class AuthState extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// final class AuthInitial extends AuthState {}

// final class LoginLoading extends AuthState {}

// final class LoginFailed extends AuthState {
//   final String message;

//   LoginFailed({required this.message});

//   @override
//   List<Object?> get props => [message];
// }

// final class LoginSuccess extends AuthState {
//   final LoginResponseModel responseModel;

//   LoginSuccess({required this.responseModel});

//   @override
//   List<Object?> get props => [responseModel];
// }

// final class RegisterLoading extends AuthState {}

// final class RegisterFailed extends AuthState {
//   final String message;

//   RegisterFailed({required this.message});

//   @override
//   List<Object?> get props => [message];
// }

// final class RegisterSuccess extends AuthState {
//   final RegisterResponseModel responseModel;

//   RegisterSuccess({required this.responseModel});

//   @override
//   List<Object?> get props => [responseModel];
// }
