import 'package:bloc/bloc.dart';
import 'package:thermocall/login/bloc/login_event.dart';
import 'package:thermocall/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(LoginState(username: event.username));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(LoginState(password: event.password));
  }

  void _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) {
    String username = state.username;
    String password = state.password;
    if (username == "Komeyl" && password == "Password") {
      emit(LoginState(status: true));
      // login success
    } else {
      emit(LoginState(status: false));
      // Show error
    }
    // Change state ui
  }
}