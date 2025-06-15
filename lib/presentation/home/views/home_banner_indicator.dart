import 'package:banking_dashboard/imports.dart';

class HomeBannerIndicator extends StackedHookView<HomeViewmodel> {
  const HomeBannerIndicator({super.key});

  @override
  Widget builder(BuildContext context, model) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: model.bannerPage < 1 ? 40 : 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              color:
               model.bannerPage < 1 ? Colors.white : Colors.grey,
            ),
          ),
          6.w,
          Container(
            width: model.bannerPage >= 1 ? 40 : 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              color:
              model.bannerPage >= 1 ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
