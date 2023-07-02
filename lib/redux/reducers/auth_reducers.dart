import 'package:transactions/redux/actions/auth_actions.dart';
import 'package:transactions/redux/states/auth_state.dart';

AuthState authReducer(AuthState state, dynamic action) {
  return action is UpdateFormValidity
      ? AuthState(isFormValid: action.isFormValid)
      : state;
}
