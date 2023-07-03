class AuthState {
  final bool isEmailInputValid;
  final bool isPasswordInputValid;
  final bool isFormValid;

  AuthState({
    required this.isEmailInputValid,
    required this.isPasswordInputValid,
    required this.isFormValid,
  });

  AuthState copyWith({
    required bool isEmailInputValid,
    required bool isPasswordInputValid,
    required bool isFormValid,
  }) {
    return AuthState(
      isEmailInputValid: isEmailInputValid,
      isPasswordInputValid: isPasswordInputValid,
      isFormValid: isFormValid,
    );
  }
}
