import 'package:flutter/material.dart';
import 'package:transactions/common/utils/app_routes.dart';
import 'package:transactions/modules/auth_module/views/auth/auth_page.dart';
import 'package:transactions/modules/main_module/views/transaction_details/transaction_details_page.dart';
import 'package:transactions/modules/main_module/views/transactions/transactions_page.dart';
import 'package:transactions/modules/splash_screen_module/views/splash_screen/splash_screen_page.dart';

class AppRouter {
  static Route<Widget> onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.initialRoute) {
      return MaterialPageRoute<Widget>(
        builder: (context) => const SplashScreenPage(),
      );
    }

    if (settings.name == AppRoutes.authRoute) {
      return MaterialPageRoute<Widget>(
        builder: (context) => const AuthPage(),
      );
    }

    if (settings.name == AppRoutes.transactionsRoute) {
      return MaterialPageRoute<Widget>(
        builder: (context) => const TransactionsPage(),
      );
    }

    if (settings.name == AppRoutes.transactionDetailsRoute) {
      return MaterialPageRoute<Widget>(
        builder: (context) => const TransactionDetailsPage(),
      );
    }

    return MaterialPageRoute<Widget>(
      builder: (context) => Text(settings.name ?? 'route'),
    );
  }
}
