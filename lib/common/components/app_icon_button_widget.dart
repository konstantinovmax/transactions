import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transactions/common/utils/app_colors.dart';

class AppIconButtonWidget extends StatelessWidget {
  final String icon;
  final void Function()? onPressed;

  const AppIconButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      splashRadius: 20.0,
      splashColor: Colors.transparent,
      highlightColor: theme.indicatorColor.withOpacity(0.1),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        width: 30.0,
        height: 30.0,
        colorFilter: const ColorFilter.mode(
          AppColors.green,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
