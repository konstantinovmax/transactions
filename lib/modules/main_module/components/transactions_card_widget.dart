import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transactions/common/utils/app_assets.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_sizes.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';

class TransactionsCardWidget extends StatelessWidget {
  const TransactionsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);

    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 10 / 2,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            color: AppColors.lightGreen.withOpacity(0.1),
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGrey.withOpacity(0.25),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.replenishmentIcon,
                        colorFilter: ColorFilter.mode(
                          AppColors.black.withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                        width: 25.0,
                        height: 25.0,
                      ),
                    ),
                  ),
                  AppSizes.sizedBoxW10,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '# 1',
                        style: AppTextStyles.text15RegularGreen,
                      ),
                      Text(
                        appLocalization.replenishment,
                        style: AppTextStyles.text15RegularBlackWithOpacity30,
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '10 000',
                style: AppTextStyles.text17BoldGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
