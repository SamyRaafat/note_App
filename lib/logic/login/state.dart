class loginStates {}

class loginInitialStates extends loginStates {}

class loginLoadingStates extends loginStates {}

class loginSuccessStates extends loginStates {}

class loginErrorStates extends loginStates {
  final String em;
  loginErrorStates({required this.em});
}
