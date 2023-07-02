import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:transactions/utils/app_colors.dart';
import 'package:transactions/utils/app_sizes.dart';
import 'package:transactions/utils/app_text_styles.dart';

class AppInputWidget extends StatelessWidget {
  final double? inputHeight;
  final String title;
  final String name;
  final Function(String?)? onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? hintText;
  final bool? readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? autofocus;
  final String? Function(String?)? validator;
  final int? minLines;
  final int? maxLines;

  const AppInputWidget({
    super.key,
    required this.inputHeight,
    required this.title,
    required this.name,
    required this.onChanged,
    required this.keyboardType,
    required this.obscureText,
    this.hintText,
    this.readOnly,
    this.inputFormatters,
    this.initialValue,
    this.controller,
    this.textInputAction,
    this.focusNode,
    this.autofocus,
    this.validator,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final blackColorWithOpacity30 = AppColors.black.withOpacity(0.3);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.text15RegularBlackWithOpacity30,
              ),
            ),
          ],
        ),
        AppSizes.sizedBoxH5,
        SizedBox(
          height: inputHeight,
          child: FormBuilderTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            name: name,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: AppColors.lightGrey,
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: blackColorWithOpacity30,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: AppColors.green,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: blackColorWithOpacity30,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: AppColors.green,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: AppColors.red,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: AppColors.red,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              errorStyle: AppTextStyles.text12RegularRed,
              errorMaxLines: 3,
              hintText: hintText,
              hintStyle: AppTextStyles.text15RegularBlackWithOpacity30,
            ),
            obscureText: obscureText,
            obscuringCharacter: '*',
            style: AppTextStyles.text15RegularBlack,
            textInputAction: textInputAction,
            onChanged: onChanged,
            keyboardType: keyboardType,
            readOnly: readOnly ?? false,
            inputFormatters: inputFormatters,
            initialValue: initialValue,
            controller: controller,
            focusNode: focusNode,
            autofocus: autofocus ?? false,
            minLines: minLines,
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }
}
