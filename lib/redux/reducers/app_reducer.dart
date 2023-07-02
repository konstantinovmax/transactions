import 'package:transactions/redux/reducers/auth_reducer.dart';
import 'package:transactions/redux/states/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    authState: authReducer(state.authState, action),
  );
}
