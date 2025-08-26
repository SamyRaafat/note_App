import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/logic/login/state.dart';

class LoginCubit extends Cubit<loginStates> {
  LoginCubit() : super(loginInitialStates());

  Future login(String userEmail, String userPass) async {
    emit(loginLoadingStates());

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEmail,
        password: userPass,
      );
      email:
      (loginSuccessStates());
    } catch (e) {
      emit(loginErrorStates(em: e.toString()));
    }
  }
}
