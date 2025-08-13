import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/logic/login/state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialStates());

  Future login(String userEmail, String userPass) async {
    emit(LoginLoadingStates());

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEmail,
        password: userPass,
      );
      email:
      (LoginSuccessStates());
    } catch (e) {
      emit(LoginErrorStates(em: e.toString()));
    }
  }
}
