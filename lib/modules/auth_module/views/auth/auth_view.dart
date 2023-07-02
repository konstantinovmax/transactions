import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_constants.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/modules/auth_module/components/auth_form_widget.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final mediaQuery = MediaQuery.of(context);
    final isPhone = mediaQuery.size.width <= AppConstants.maxPhoneWidth;

    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          appLocalization.transactions,
          style: AppTextStyles.text20BoldGreen,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
            isPhone ? AppConstants.phonePadding : AppConstants.tabletPadding,
          ),
          child: const AuthFormWidget(),
        ),
      ),
    );
  }
}
