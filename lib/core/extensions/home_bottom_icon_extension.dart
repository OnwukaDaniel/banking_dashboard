import 'package:banking_dashboard/imports.dart';

extension HomeBottomIconExtension on HomeBottomIcon {
  String get label {
    switch (this) {
      case HomeBottomIcon.home:
        return 'Home';
      case HomeBottomIcon.send:
        return 'Send';
      case HomeBottomIcon.wallet:
        return 'Wallet';
      case HomeBottomIcon.explore:
        return 'Explore';
    }
  }

  SvgGenImage get iconAsset {
    switch (this) {
      case HomeBottomIcon.home:
        return Assets.svg.bottomHome;
      case HomeBottomIcon.send:
        return Assets.svg.bottomSend;
      case HomeBottomIcon.wallet:
        return Assets.svg.wallet2;
      case HomeBottomIcon.explore:
        return Assets.svg.bottomExplore;
    }
  }
}
