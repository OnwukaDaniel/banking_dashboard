import 'package:banking_dashboard/imports.dart';

class HomeBanner1 extends StatelessWidget {
  const HomeBanner1({
    super.key
  });

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
                      ColorUtils.appAccentColor,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      6.w,
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)
                        ),
                        child: Assets.svg.compass.svg(),
                      ),
                      12.w,
                      Text(
                        'Explore',
                        style: TextStyle(color: Colors.black),
                      ),
                      6.w,
                    ],
                  ),
                ),
                Text(
                  'Pay bills & airtime, buy gift cards, get latest updates and more.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          Assets.images.banner2.image(),
        ],
      ),
    );
  }
}