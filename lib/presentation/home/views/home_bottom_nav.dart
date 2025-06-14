import 'package:banking_dashboard/imports.dart';

class HomeBottomNav extends StackedHookView<HomeViewmodel> {
  const HomeBottomNav({super.key});

  @override
  Widget builder(BuildContext context, model) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width - 32,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorUtils.appColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
              HomeBottomIcon.values.map((e) {
                return Expanded(
                  child: InkWell(
                    onTap: () => model.setHomeTab(e),
                    child: Container(
                      color:
                          model.selectedBottomTab == e
                              ? ColorUtils.selectedTabBg
                              : Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 3,
                            color:
                                model.selectedBottomTab == e
                                    ? ColorUtils.appAccentColor
                                    : Colors.transparent,
                          ),
                          12.h,
                          e.iconAsset.svg(
                            colorFilter: ColorFilter.mode(
                              model.selectedBottomTab == e
                                  ? ColorUtils.appAccentColor
                                  : Colors.grey,
                              BlendMode.srcATop,
                            ),
                          ),
                          6.h,
                          Text(
                            e.label,
                            style: TextStyle(
                              color:
                                  model.selectedBottomTab == e
                                      ? ColorUtils.appAccentColor
                                      : Colors.grey,
                              fontWeight:
                                  model.selectedBottomTab == e
                                      ? FontWeight.w900
                                      : null,
                            ),
                          ),
                          6.h,
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
