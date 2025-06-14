import 'package:banking_dashboard/imports.dart';

class HomeAppBar extends StackedHookView<HomeViewmodel> {
  const HomeAppBar({super.key});

  @override
  Widget builder(BuildContext context, model) {
    return AppBar(
      backgroundColor: ColorUtils.appColor,
      leadingWidth: 96,
      leading: IconButton(
        onPressed: () => model.navKey.currentState?.openDrawer(),
        icon: Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 2),
            ],
          ),
          child: Assets.images.userImg.image(),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Assets.svg.notification.svg()),
        12.w,
      ],
      centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Welcome,',
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          Text(
            model.userName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
