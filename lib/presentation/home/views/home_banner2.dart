import 'package:banking_dashboard/imports.dart';

class HomeBanner2 extends StatelessWidget {
  const HomeBanner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New',
                  style: TextStyle(
                    color: ColorUtils.appGreen,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                12.h,
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      ColorUtils.appColor,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      6.w,
                      Text(
                        'Refer and Earn!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      6.w,
                    ],
                  ),
                ),
                Text(
                  "Earn \$5 on every referral!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          Assets.images.banner1.image(),
        ],
      ),
    );
  }
}
