import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:transactions/common/redux/actions/transactions_actions.dart';
import 'package:transactions/common/redux/states/app_state.dart';
import 'package:transactions/common/redux/states/transactions_state.dart';
import 'package:transactions/common/utils/app_colors.dart';
import 'package:transactions/modules/main_module/components/transactions_app_bar_title_widget.dart';
import 'package:transactions/modules/main_module/components/transactions_chart_widget.dart';
import 'package:transactions/modules/main_module/components/transactions_tab_bar_widget.dart';
import 'package:transactions/modules/main_module/components/transactions_widget.dart';

class TransactionsView extends StatefulWidget {
  const TransactionsView({super.key});

  @override
  State<TransactionsView> createState() => _TransactionsViewState();
}

class _TransactionsViewState extends State<TransactionsView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2)
      ..addListener(() {
        if (!mounted) return;

        StoreProvider.of<AppState>(context)
            .dispatch(UpdateActiveTab(index: _tabController.index));
      });

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const TransactionsAppBarTitleWidget(),
        bottom: PreferredSize(
          child: TransactionsTabBarWidget(tabController: _tabController),
          preferredSize: const Size.fromHeight(50.0),
        ),
      ),
      body: StoreConnector<AppState, TransactionsState>(
        converter: (store) => store.state.transactionsState,
        builder: (context, transactionsState) {
          if (_tabController.index != transactionsState.activeTab) {
            _tabController.index = transactionsState.activeTab;
          }

          return TabBarView(
            controller: _tabController,
            children: const [
              TransactionsWidget(),
              TransactionsChartWidget(),
            ],
          );
        },
      ),
    );
  }
}
