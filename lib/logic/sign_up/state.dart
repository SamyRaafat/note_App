class sinupStates {}

class sinupInitialStates extends sinupStates {}

class sinupLoadingStates extends sinupStates {}

class sinupSuccessStates extends sinupStates {}

class sinupErrorStates extends sinupStates {
  final String em;
  sinupErrorStates({required this.em});
}
