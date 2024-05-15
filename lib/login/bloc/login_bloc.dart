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
    final oldstatus = state.status;
    final oldpassword = state.password;
    final newusername = event.username;

    emit(LoginState(
        username: newusername, password: oldpassword, status: oldstatus));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final oldstatus = state.status;
    final newpassword = event.password;
    final oldusername = state.username;
    emit(LoginState(
        username: oldusername, password: newpassword, status: oldstatus));
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