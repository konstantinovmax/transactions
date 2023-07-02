import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:transactions/common/components/app_input_widget.dart';
import 'package:transactions/common/components/app_title_widget.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/auth_module/components/auth_form_submit_button_widget.dart';
import 'package:transactions/redux/actions/auth_actions.dart';
import 'package:transactions/redux/states/app_state.dart';
import 'package:transactions/utils/app_sizes.dart';

class AuthFormWidget extends StatefulWidget {
  const AuthFormWidget({super.key});

  @override
  State<AuthFormWidget> createState() => _AuthFormWidgetState();
}

class _AuthFormWidgetState extends State<AuthFormWidget> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final storeProvider = StoreProvider.of<AppState>(context);

    return FormBuilder(
      key: _formKey,
      onChanged: () {
        if (_formKey.currentState != null) {
          storeProvider.dispatch(
            UpdateFormValidity(isFormValid: _formKey.currentState!.validate()),
          );
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Title.
          AppTitleWidget(title: appLocalization.checkYourTransactions),
          AppSizes.sizedBoxH20,
          // Email.
          AppInputWidget(
            inputHeight: 75.0,
            title: appLocalization.email,
            name: 'login_input',
            hintText: 'test@test.com',
            onChanged: (value) {},
            keyboardType: TextInputType.text,
            obscureText: false,
            maxLines: 1,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.email(),
              FormBuilderValidators.required(),
            ]),
            autofocus: true,
            textInputAction: TextInputAction.next,
          ),
          // Password.
          AppInputWidget(
            inputHeight: 75.0,
            title: appLocalization.password,
            hintText: '********',
            name: 'password_input',
            onChanged: (value) {},
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            maxLines: 1,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.minLength(8),
              FormBuilderValidators.required(),
            ]),
            textInputAction: TextInputAction.done,
          ),
          AppSizes.sizedBoxH30,
          // Submit button.
          const AuthFormSubmitButtonWidget(),
        ],
      ),
    );
  }
}
