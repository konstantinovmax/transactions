// ignore_for_file: avoid_annotating_with_dynamic

import 'package:transactions/redux/reducers/auth_reducers.dart';
import 'package:transactions/redux/states/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    authState: authReducer(state.authState, action),
  );
}
