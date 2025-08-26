class HomepageStates {}

class HomepageInitialStates extends HomepageStates {}

class HomepageLoaadingStates extends HomepageStates {}

class HomepageSuccessStates extends HomepageStates {}

class HomepageErrorStates extends HomepageStates {
  final String em;
  HomepageErrorStates({required this.em});
}
