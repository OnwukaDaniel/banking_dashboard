import 'dart:async';

import 'package:banking_dashboard/imports.dart';

class HomeViewmodel extends BaseViewModel {
  PageController pageController = PageController(viewportFraction: .95);

  String get userName => 'Martin Jones';

  String get totalBalance => '0';
  bool hasFingerPrint = false;
  bool hideBalance = false;
  var bannerPage = 0.0;
  GlobalKey<ScaffoldState> navKey = GlobalKey();
  HomeBottomIcon selectedBottomTab = HomeBottomIcon.home;
  late final AnimationController reloadController;
  late final AnimationController addController;

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

  init(TickerProvider provider) {
    reloadController = AnimationController(
      vsync: provider,
      duration: const Duration(seconds: 1),
    );
    addController = AnimationController(
      vsync: provider,
      duration: const Duration(seconds: 1),
    );
    pageController.addListener(() {
      bannerPage = pageController.page ?? 0;
      notifyListeners();
    });
    Timer.periodic(Duration(seconds: 3), (_) {
      pageController.animateToPage(
        pageController.page == 0 ? 1 : 0,
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    });
  }

  setHomeTab(HomeBottomIcon input) {
    selectedBottomTab = input;
    notifyListeners();
  }

  setHasFingerPrint(bool input) {
    hasFingerPrint = input;
    notifyListeners();
  }

  setHideBalance(bool input) {
    hideBalance = input;
    notifyListeners();
  }

  @override
  void dispose() {
    reloadController.dispose();
    addController.dispose();
    super.dispose();
  }
}
