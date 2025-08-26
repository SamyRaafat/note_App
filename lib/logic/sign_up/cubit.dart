import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/logic/sign_up/state.dart';

class sinupCubit extends Cubit<sinupStates> {
  sinupCubit() : super(sinupInitialStates());

  Future sinup(String userEmail, String userPass) async {
    emit(sinupLoadingStates());

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userEmail,
        password: userPass,
      );
      email:
      (sinupSuccessStates());
    } catch (e) {
      emit(sinupErrorStates(em: e.toString()));
    }
  }
}
