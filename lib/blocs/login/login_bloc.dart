import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial(true)) {
    on<TogglePassword>((event, emit) {
      if (state is LoginInitial) {
        emit(LoginInitial(!(state as LoginInitial).isObscure));
      }
    });
  }
}
