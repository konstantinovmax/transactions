class AuthState {
  final bool isFormValid;

  AuthState({required this.isFormValid});

  AuthState copyWith({required bool isFormValid}) {
    return AuthState(
      isFormValid: isFormValid,
    );
  }
}
