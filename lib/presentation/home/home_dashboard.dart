import 'package:banking_dashboard/imports.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, model, child) {
        return Scaffold(
          key: model.navKey,
          backgroundColor: ColorUtils.appColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: HomeAppBar(),
          ),
          drawer: HomeDrawer(),
          body: Stack(
            children: [
              ListView(
                children: [
                  HomeBalanceCard(),
                  SizedBox(
                    height: 180,
                    child: PageView(
                      controller: model.pageController,
                      children: [HomeBanner1(), HomeBanner2()],
                    ),
                  ),
                  HomeBannerIndicator(),
                  8.h,
                  HomeRecentTransactions(),
                ],
              ),
              Positioned(
                bottom: 1,
                child: HomeBottomNav(),
              ),
            ],
          ),
        );
      },
    );
  }
}
