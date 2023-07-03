import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/common/utils/app_constants.dart';
import 'package:transactions/common/utils/app_text_styles.dart';
import 'package:transactions/l10n/generated/l10n.dart';

class TransactionsTabBarWidget extends StatelessWidget {
  final TabController tabController;

  const TransactionsTabBarWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalization.of(context);
    final mediaQuery = MediaQuery.of(context);
    final isPhone = mediaQuery.size.width <= AppConstants.maxPhoneWidth;

    return Center(
      child: TabBar(
        padding: EdgeInsets.symmetric(
          horizontal:
              isPhone ? AppConstants.phonePadding : AppConstants.tabletPadding,
        ),
        controller: tabController,
        labelColor: AppColors.black.withOpacity(0.4),
        labelStyle: AppTextStyles.text17RegularBlack,
        unselectedLabelColor: AppColors.black.withOpacity(0.3),
        indicatorColor: AppColors.lightGreen,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        tabs: [
          Tab(
            height: 40.0,
            iconMargin: EdgeInsets.zero,
            text: appLocalization.transactions,
          ),
          Tab(
            height: 40.0,
            iconMargin: EdgeInsets.zero,
            text: appLocalization.chart,
          ),
        ],
      ),
    );
  }
}
