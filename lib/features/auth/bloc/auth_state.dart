part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class AuthInitial extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginFailed extends AuthState {
  final String message;

  LoginFailed({required this.message});

  @override
  List<Object?> get props => [message];
}

final class LoginSuccess extends AuthState {
  final LoginResponseModel responseModel;

  LoginSuccess({required this.responseModel});

  @override
  List<Object?> get props => [responseModel];
}

final class RegisterLoading extends AuthState {}

final class RegisterFailed extends AuthState {
  final String message;

  RegisterFailed({required this.message});

  @override
  List<Object?> get props => [message];
}

final class RegisterSuccess extends AuthState {
  final RegisterResponseModel responseModel;

  RegisterSuccess({required this.responseModel});

  @override
  List<Object?> get props => [responseModel];
}
