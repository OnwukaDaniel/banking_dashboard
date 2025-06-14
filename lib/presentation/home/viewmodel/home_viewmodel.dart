import 'package:banking_dashboard/imports.dart';

class HomeViewmodel extends BaseViewModel {
  PageController pageController = PageController(viewportFraction: .95);
  String get userName => 'Martin Jones';
  String get totalBalance => '0';
  HomeBottomIcon selectedBottomTab = HomeBottomIcon.home;

  List<TransactionModel> get transactions => [
    TransactionModel(
      title: 'Miracle Sahid',
      type: 'Transfer',
      date: 'Apr 26 2023',
      amount: '-₦94,249.00',
      icon: Assets.svg.sendArrow.path,
      iconColor: Color(0xffe6e9ee),
      isDebit: true,
    ),
    TransactionModel(
      title: 'GBP to NGN',
      type: 'Convert',
      date: 'Apr 15 2023',
      amount: '£104.00',
      icon: Assets.svg.reload.path,
      iconColor: Color(0xffF9EAE9),
      isDebit: false,
    ),
    TransactionModel(
      title: 'Samuel Abram',
      type: 'GBP Wallet funding',
      date: 'Apr 08 2023',
      amount: '+£104.00',
      icon: Assets.svg.wallet.path,
      iconColor: Color(0xffe6e9ee),
      isDebit: false,
    ),
    TransactionModel(
      title: 'Samuel Abram',
      type: 'Transfer',
      date: 'Apr 05 2023',
      amount: '+£104.00',
      icon: Assets.svg.wallet.path,
      iconColor: Color(0xffe6e9ee),
      isDebit: false,
    ),
    TransactionModel(
      title: 'Miracle Sahid',
      type: 'Transfer',
      date: 'Apr 26 2023',
      amount: '-₦94,249.00',
      icon: Assets.svg.sendArrow.path,
      iconColor: Color(0xffe6e9ee),
      isDebit: true,
    ),
    TransactionModel(
      title: 'GBP to NGN',
      type: 'Convert',
      date: 'Apr 15 2023',
      amount: '£104.00',
      icon: Assets.svg.reload.path,
      iconColor: Color(0xffF9EAE9),
      isDebit: false,
    ),
    TransactionModel(
      title: 'Samuel Abram',
      type: 'GBP Wallet funding',
      date: 'Apr 08 2023',
      amount: '+£104.00',
      icon: Assets.svg.wallet.path,
      iconColor: Color(0xffe6e9ee),
      isDebit: false,
    ),
    TransactionModel(
      title: 'Samuel Abram',
      type: 'Transfer',
      date: 'Apr 05 2023',
      amount: '+£104.00',
      icon: Assets.svg.wallet.path,
      iconColor: Color(0xffe6e9ee),
      isDebit: false,
    ),
  ];

  init() {
    pageController = PageController(viewportFraction: .95);
    pageController.addListener(() => notifyListeners());
  }

  setHomeTab(HomeBottomIcon input) {
    selectedBottomTab = input;
    notifyListeners();
  }
}