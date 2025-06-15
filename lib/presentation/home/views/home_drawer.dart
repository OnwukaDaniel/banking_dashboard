import 'package:banking_dashboard/imports.dart';

class HomeDrawer extends StackedHookView<HomeViewmodel> {
  const HomeDrawer({super.key});

  @override
  Widget builder(BuildContext context, model) {
    return Drawer(
      child: Column(
        children: [
          kToolbarHeight.h,
          Container(
            margin: EdgeInsets.all(18),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorUtils.appColor,
            ),
            child: Row(
              children: [
                4.w,
                Assets.images.userImg.image(width: 48),
                12.w,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'David Williams',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      8.h,
                      Text(
                        'davidwilliams@gmail.com',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: HomeDrawerEnum.values.length,
              itemBuilder: (context, index) {
                final section = HomeDrawerEnum.values[index];
                return Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.grey.withAlpha(50)),
                  child: ExpansionTile(
                    title: Text(section.name),
                    initiallyExpanded: true,
                    children:
                        section.subItems.map((item) {
                          return ListTile(
                            leading: Image.asset(item.asset, width: 24),
                            title: Text(item.name),
                            trailing:
                                item.name.toLowerCase() != 'fingerprint'
                                    ? null
                                    : Switch(
                                      activeColor: ColorUtils.appAccentColor,
                                      value: model.hasFingerPrint,
                                      onChanged: (v) {
                                        model.setHasFingerPrint(v);
                                      },
                                    ),
                            onTap: () {
                              // Handle tap
                            },
                          );
                        }).toList(),
                  ),
                );
              },
            ),
          ),
          ListTile(
            leading: Assets.images.logout.image(width: 24),
            title: Text(
              'Log out',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
