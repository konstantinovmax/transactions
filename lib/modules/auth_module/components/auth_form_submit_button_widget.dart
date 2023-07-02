import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transactions/common/components/app_submit_button_widget.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/redux/states/app_state.dart';
import 'package:transactions/redux/states/auth_state.dart';

class AuthFormSubmitButtonWidget extends StatelessWidget {
  const AuthFormSubmitButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);

    return StoreConnector<AppState, AuthState>(
      converter: (store) => store.state.authState,
      builder: (context, authState) {
        return AppSubmitButtonWidget(
          title: appLocalization.login,
          onPressed: authState.isFormValid ? () {} : null,
        );
      },
    );
  }
}
