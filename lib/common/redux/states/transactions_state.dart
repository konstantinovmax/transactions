class TransactionsState {
  final int activeTab;

  TransactionsState({
    required this.activeTab,
  });

  TransactionsState copyWith({
    required int activeTab,
  }) {
    return TransactionsState(
      activeTab: activeTab,
    );
  }
}
