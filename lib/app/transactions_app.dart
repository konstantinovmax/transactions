import 'package:flutter/material.dart';
import 'package:transactions/l10n/generated/l10n.dart';
import 'package:transactions/utils/app_router.dart';
import 'package:transactions/utils/app_routes.dart';

class TransactionsApp extends StatelessWidget {
  const TransactionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Transactions',
      localizationsDelegates: [
        AppLocalization.delegate,
      ],
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
