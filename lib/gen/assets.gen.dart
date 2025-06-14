/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/banner1.png
  AssetGenImage get banner1 => const AssetGenImage('assets/images/banner1.png');

  /// File path: assets/images/banner2.png
  AssetGenImage get banner2 => const AssetGenImage('assets/images/banner2.png');

  /// File path: assets/images/gb_flag.png
  AssetGenImage get gbFlag => const AssetGenImage('assets/images/gb_flag.png');

  /// File path: assets/images/ng_flag.png
  AssetGenImage get ngFlag => const AssetGenImage('assets/images/ng_flag.png');

  /// File path: assets/images/user_img.png
  AssetGenImage get userImg =>
      const AssetGenImage('assets/images/user_img.png');

  /// List of all assets
  List<AssetGenImage> get values => [banner1, banner2, gbFlag, ngFlag, userImg];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/affiliate.svg
  SvgGenImage get affiliate => const SvgGenImage('assets/svg/affiliate.svg');

  /// File path: assets/svg/bottom_explore.svg
  SvgGenImage get bottomExplore =>
      const SvgGenImage('assets/svg/bottom_explore.svg');

  /// File path: assets/svg/bottom_home.svg
  SvgGenImage get bottomHome => const SvgGenImage('assets/svg/bottom_home.svg');

  /// File path: assets/svg/bottom_send.svg
  SvgGenImage get bottomSend => const SvgGenImage('assets/svg/bottom_send.svg');

  /// File path: assets/svg/compass.svg
  SvgGenImage get compass => const SvgGenImage('assets/svg/compass.svg');

  /// File path: assets/svg/convert.svg
  SvgGenImage get convert => const SvgGenImage('assets/svg/convert.svg');

  /// File path: assets/svg/device_session.svg
  SvgGenImage get deviceSession =>
      const SvgGenImage('assets/svg/device_session.svg');

  /// File path: assets/svg/eye_close.svg
  SvgGenImage get eyeClose => const SvgGenImage('assets/svg/eye_close.svg');

  /// File path: assets/svg/fingerprint.svg
  SvgGenImage get fingerprint =>
      const SvgGenImage('assets/svg/fingerprint.svg');

  /// File path: assets/svg/globe.svg
  SvgGenImage get globe => const SvgGenImage('assets/svg/globe.svg');

  /// File path: assets/svg/inbox.svg
  SvgGenImage get inbox => const SvgGenImage('assets/svg/inbox.svg');

  /// File path: assets/svg/kyc_scan.svg
  SvgGenImage get kycScan => const SvgGenImage('assets/svg/kyc_scan.svg');

  /// File path: assets/svg/lock_pin.svg
  SvgGenImage get lockPin => const SvgGenImage('assets/svg/lock_pin.svg');

  /// File path: assets/svg/log_out.svg
  SvgGenImage get logOut => const SvgGenImage('assets/svg/log_out.svg');

  /// File path: assets/svg/login_otp.svg
  SvgGenImage get loginOtp => const SvgGenImage('assets/svg/login_otp.svg');

  /// File path: assets/svg/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/svg/notification.svg');

  /// File path: assets/svg/notification2.svg
  SvgGenImage get notification2 =>
      const SvgGenImage('assets/svg/notification2.svg');

  /// File path: assets/svg/person.svg
  SvgGenImage get person => const SvgGenImage('assets/svg/person.svg');

  /// File path: assets/svg/person2.svg
  SvgGenImage get person2 => const SvgGenImage('assets/svg/person2.svg');

  /// File path: assets/svg/reload.svg
  SvgGenImage get reload => const SvgGenImage('assets/svg/reload.svg');

  /// File path: assets/svg/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/svg/scan.svg');

  /// File path: assets/svg/send_arrow.svg
  SvgGenImage get sendArrow => const SvgGenImage('assets/svg/send_arrow.svg');

  /// File path: assets/svg/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/svg/settings.svg');

  /// File path: assets/svg/stopwatch.svg
  SvgGenImage get stopwatch => const SvgGenImage('assets/svg/stopwatch.svg');

  /// File path: assets/svg/support_24.svg
  SvgGenImage get support24 => const SvgGenImage('assets/svg/support_24.svg');

  /// File path: assets/svg/transaction_history.svg
  SvgGenImage get transactionHistory =>
      const SvgGenImage('assets/svg/transaction_history.svg');

  /// File path: assets/svg/two_factor.svg
  SvgGenImage get twoFactor => const SvgGenImage('assets/svg/two_factor.svg');

  /// File path: assets/svg/verify.svg
  SvgGenImage get verify => const SvgGenImage('assets/svg/verify.svg');

  /// File path: assets/svg/wallet.svg
  SvgGenImage get wallet => const SvgGenImage('assets/svg/wallet.svg');

  /// File path: assets/svg/wallet2.svg
  SvgGenImage get wallet2 => const SvgGenImage('assets/svg/wallet2.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    affiliate,
    bottomExplore,
    bottomHome,
    bottomSend,
    compass,
    convert,
    deviceSession,
    eyeClose,
    fingerprint,
    globe,
    inbox,
    kycScan,
    lockPin,
    logOut,
    loginOtp,
    notification,
    notification2,
    person,
    person2,
    reload,
    scan,
    sendArrow,
    settings,
    stopwatch,
    support24,
    transactionHistory,
    twoFactor,
    verify,
    wallet,
    wallet2,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
