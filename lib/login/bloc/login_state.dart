

import "package:equatable/equatable.dart";
import 'package:formz/formz.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.status = false,
    this.username = "",
    this.password = "",
  });

  final bool status;
  final String username;
  final String password;

  @override
  List<Object> get props => [username, password];
  //
}

