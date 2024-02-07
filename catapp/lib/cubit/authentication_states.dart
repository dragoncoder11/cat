class AuthenticationState {}

class AuthInitialState extends AuthenticationState {}

class AuthLoadedState extends AuthenticationState {}

class AuthSuccessState extends AuthenticationState {}

class AuthFailureState extends AuthenticationState {
  final String errorMessage;

  AuthFailureState({required this.errorMessage});
}