import 'package:banking_dashboard/imports.dart';

class HomeBalanceCard extends StackedHookView<HomeViewmodel> {
  const HomeBalanceCard({super.key});

  @override
  Widget builder(BuildContext context, model) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 20, left: 20, top: 20),
      decoration: BoxDecoration(
        color: ColorUtils.transGrey,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 20,
              right: 20,
              left: 20,
              top: 10,
            ),
            decoration: BoxDecoration(
              color: ColorUtils.appAccentColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(50),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Assets.images.gbFlag.image(width: 18),
                          ),
                          const Text(
                            'GBP',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          18.w,
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon:
                          model.hideBalance
                              ? Assets.svg.eyeClose.svg(width: 18)
                              : Icon(
                                Icons.visibility_outlined,
                                color: Colors.black,
                              ),
                      onPressed: () => model.setHideBalance(!model.hideBalance),
                    ),
                  ],
                ),
                8.h,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Total balance',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    8.h,
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                model.hideBalance
                                    ? '***.'
                                    : '£${model.totalBalance}.',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: model.hideBalance ? '***.' : '00',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          HomeActionButtons(),
        ],
      ),
    );
  }
}
