class LoginState {}

class InitialState extends LoginState {}

class SignInState extends LoginState {
  final String login;
  final String password;

  SignInState({required this.login, required this.password});
}

class SignUpState extends LoginState {
  final String login;
  final String username;
  final String password;

  SignUpState({
    required this.login,
    required this.password,
    required this.username,
  });
}

class LoggedState extends LoginState {}

class UnAuthenticatedState extends LoginState {}