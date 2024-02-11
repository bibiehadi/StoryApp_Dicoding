part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(LoginRequestModel requestModel) = _Login;
  const factory AuthEvent.register(RegisterRequestModel requestModel) =
      _Register;
}
