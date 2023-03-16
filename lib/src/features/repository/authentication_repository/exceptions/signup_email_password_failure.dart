


class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure ([this.message = "an unknown error has occured"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code) {
      case 'weak-password' :
        return const SignUpWithEmailAndPasswordFailure('Please Enter A Stronger Password.');
      case 'email-already-in-use' :
        return const SignUpWithEmailAndPasswordFailure('An Account Is Already In Use With That Email.');
      case 'invalid-email' :
        return const SignUpWithEmailAndPasswordFailure('Please Enter A Valid Email.');
      case 'operation-not-allowed' :
        return const SignUpWithEmailAndPasswordFailure('Operation Is Not Allowed, Please Contact support.');
      case 'user-disabled' :
        return const SignUpWithEmailAndPasswordFailure('This User Has Been Disabled, Please Contact Support For Assistance.');
      default: return const SignUpWithEmailAndPasswordFailure();
    }
  }
}