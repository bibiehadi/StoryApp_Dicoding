import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:story_app/features/auth/data/datasources/remote_datasources/auth_datasource.dart';

import '../data/models/request/login_request_model.dart';
import '../data/models/request/register_request_model.dart';
import '../data/models/response/login_response_model.dart';
import '../data/models/response/register_response_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthDatasource _auth_dataresource;
  AuthBloc(this._auth_dataresource) : super(AuthInitial()) {
    on<LoginAuthEvent>((event, emit) async {
      emit(LoginLoading());
      final response = await _auth_dataresource.login(event.requestModel);
      response.fold(
        (left) => emit(LoginFailed(message: left)),
        (right) {
          print(right);
          return emit(LoginSuccess(responseModel: right));
        },
      );
    });

    on<RegisterAuthEvent>((event, emit) async {
      emit(RegisterLoading());
      final response = await _auth_dataresource.register(event.requestModel);
      print("GETTING RESPONSE");
      response.fold(
        (left) => emit(RegisterFailed(message: left)),
        (right) {
          print(right);
          return emit(RegisterSuccess(responseModel: right));
        },
      );
    });
  }
}
