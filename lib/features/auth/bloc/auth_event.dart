part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(LoginRequestModel requestModel) = _Login;
  const factory AuthEvent.register(RegisterRequestModel requestModel) =
      _Register;
}
// abstract class AuthEvent extends Equatable {
//   const AuthEvent();
// }

// class LoginAuthEvent extends AuthEvent {
//   final LoginRequestModel requestModel;

//   const LoginAuthEvent({required this.requestModel});
//   @override
//   List<Object?> get props => [requestModel];
// }

// class RegisterAuthEvent extends AuthEvent {
//   final RegisterRequestModel requestModel;

//   const RegisterAuthEvent({required this.requestModel});

//   @override
//   List<Object?> get props => [requestModel];
// }
