import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:transactions/common/components/app_input_widget.dart';
import 'package:transactions/common/components/app_title_widget.dart';
import 'package:transactions/common/redux/actions/auth_actions/auth_actions.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/utils/app_constants.dart';
import 'package:transactions/common/utils/app_sizes.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/auth_module/components/auth_form_submit_button_widget.dart';

class AuthFormWidget extends StatelessWidget {
  const AuthFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final mediaQuery = MediaQuery.of(context);
    final isPhone = mediaQuery.size.width <= AppConstants.maxPhoneWidth;
    final storeProvider = StoreProvider.of<AppState>(context);
    final requiredValidator = FormBuilderValidators.required<void>();

    return SizedBox(
      width: isPhone ? null : AppConstants.formWidthOnTablets,
      child: FormBuilder(
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
              onChanged: (value) {
                storeProvider.dispatch(UpdateEmailInput(email: value ?? ''));
              },
              keyboardType: TextInputType.text,
              obscureText: false,
              maxLines: 1,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(),
                requiredValidator,
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
              onChanged: (value) {
                storeProvider
                    .dispatch(UpdatePasswordInput(password: value ?? ''));
              },
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              maxLines: 1,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.minLength(8),
                requiredValidator,
              ]),
              textInputAction: TextInputAction.done,
            ),
            AppSizes.sizedBoxH30,
            // Submit button.
            const AuthFormSubmitButtonWidget(),
          ],
        ),
      ),
    );
  }
}
