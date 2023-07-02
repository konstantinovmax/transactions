import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_text_styles.dart';

class AppSubmitButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  final void Function()? onPressed;

  const AppSubmitButtonWidget({
    super.key,
    required this.title,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.grey.withOpacity(0.7);
            }

            return Colors.transparent;
          }),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.text17RegularLightGrey,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
