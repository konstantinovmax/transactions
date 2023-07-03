import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transactions/common/redux/store.dart';
import 'package:transactions/common/utils/app_router.dart';
import 'package:transactions/common/utils/app_routes.dart';
import 'package:transactions/l10n/generated/l10n.dart';

class TransactionsApp extends StatelessWidget {
  const TransactionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        title: 'Transactions',
        localizationsDelegates: [
          AppLocalization.delegate,
        ],
        initialRoute: AppRoutes.initialRoute,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
