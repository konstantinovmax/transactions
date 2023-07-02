import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:redux/redux.dart';
import 'package:transactions/redux/actions/auth_actions.dart';
import 'package:transactions/redux/states/auth_state.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UpdateEmailInput>(_updateEmail),
  TypedReducer<AuthState, UpdatePasswordInput>(_updatePassword),
]);

AuthState _updateEmail(AuthState state, UpdateEmailInput action) {
  final isEmailValid = _validateEmail(action.email);

  return AuthState(
    isEmailInputValid: isEmailValid,
    isPasswordInputValid: state.isPasswordInputValid,
    isFormValid: isEmailValid && state.isPasswordInputValid,
  );
}

AuthState _updatePassword(AuthState state, UpdatePasswordInput action) {
  final isPasswordValid = _validatePassword(action.password);

  return AuthState(
    isEmailInputValid: state.isEmailInputValid,
    isPasswordInputValid: isPasswordValid,
    isFormValid: isPasswordValid && state.isEmailInputValid,
  );
}

bool _validateEmail(String email) {
  return FormBuilderValidators.email()(email) == null &&
      FormBuilderValidators.required<void>()(email) == null;
}

bool _validatePassword(String password) {
  return FormBuilderValidators.minLength<void>(8)(password) == null &&
      FormBuilderValidators.required<void>()(password) == null;
}
