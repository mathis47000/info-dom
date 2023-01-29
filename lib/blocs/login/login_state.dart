part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  final bool isObscure;

  const LoginInitial(this.isObscure);

  @override
  List<Object> get props => [isObscure];
}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {}

class LoginError extends LoginState {}
