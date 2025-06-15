import 'package:banking_dashboard/imports.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      onViewModelReady: (model) => model.init(this),
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
