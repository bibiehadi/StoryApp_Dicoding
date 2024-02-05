import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_app/features/auth/data/datasources/remote_datasources/auth_datasource.dart';
import 'package:story_app/features/auth/data/models/request/login_request_model.dart';
import 'package:story_app/features/auth/data/models/request/register_request_model.dart';

import '../data/models/response/login_response_model.dart';
import '../data/models/response/register_response_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthDatasource _authDatasource;
  AuthBloc(this._authDatasource) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const AuthState.loginLoading());
      final response = await _authDatasource.login(event.requestModel);
      response.fold(
        (left) => emit(AuthState.loginFailed(left)),
        (right) {
          return emit(AuthState.loginSuccess(right));
        },
      );
    });

    on<_Register>((event, emit) async {
      emit(const AuthState.registerLoading());
      final response = await _authDatasource.register(event.requestModel);
      response.fold(
        (left) => emit(AuthState.registerFailed(left)),
        (right) {
          return emit(AuthState.registerSuccess(right));
        },
      );
    });
  }
}
