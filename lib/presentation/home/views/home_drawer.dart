import 'package:banking_dashboard/imports.dart';

class HomeDrawer extends StackedHookView<HomeViewmodel> {
  const HomeDrawer({super.key});

  @override
  Widget builder(BuildContext context, model) {
    return Drawer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorUtils.appColor,
            ),
          )
        ],
      ),
    );
  }
}
