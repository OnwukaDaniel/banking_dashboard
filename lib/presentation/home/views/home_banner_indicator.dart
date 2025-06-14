import 'package:banking_dashboard/imports.dart';

class HomeBannerIndicator extends StackedHookView<HomeViewmodel> {
  const HomeBannerIndicator({super.key});

  @override
  Widget builder(BuildContext context, model) {
    var bannerPage = 0.0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bannerPage = model.pageController.hasClients ? (model.pageController.page??0) : 0;
    });
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: bannerPage < 1 ? 40 : 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              color:
               bannerPage < 1 ? Colors.white : Colors.grey,
            ),
          ),
          6.w,
          Container(
            width: bannerPage >= 1 ? 40 : 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              color:
              bannerPage >= 1 ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
