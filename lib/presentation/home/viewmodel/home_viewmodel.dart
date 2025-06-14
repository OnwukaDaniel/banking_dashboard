import 'package:banking_dashboard/imports.dart';

class HomeViewmodel extends BaseViewModel {
  PageController pageController = PageController(viewportFraction: .95);
  String get userName => 'Martin Jones';
  String get totalBalance => '0';

  List<TransactionModel> get transactions => [
    TransactionModel(
      title: 'Miracle Sahid',
      type: 'Transfer',
      date: 'Apr 26 2023',
      amount: '-₦94,249.00',
      icon: Icons.send,
      iconColor: Colors.blue,
      isDebit: true,
    ),
    TransactionModel(
      title: 'GBP to NGN',
      type: 'Convert',
      date: 'Apr 15 2023',
      amount: '£104.00',
      icon: Icons.currency_exchange,
      iconColor: Colors.orange,
      isDebit: false,
    ),
    TransactionModel(
      title: 'Samuel Abram',
      type: 'GBP Wallet funding',
      date: 'Apr 08 2023',
      amount: '+£104.00',
      icon: Icons.account_balance_wallet,
      iconColor: Colors.green,
      isDebit: false,
    ),
    TransactionModel(
      title: 'Samuel Abram',
      type: 'Transfer',
      date: 'Apr 05 2023',
      amount: '+£104.00',
      icon: Icons.send,
      iconColor: Colors.blue,
      isDebit: false,
    ),
  ];

  init() {
    pageController.addListener(() => notifyListeners());
  }

  void onSendTap() {
  }

  void onAddTap() {
  }

  void onRefreshTap() {
  }

  void onViewAllTap() {
  }
}