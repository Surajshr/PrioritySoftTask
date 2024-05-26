/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBrandIconGen {
  const $AssetsBrandIconGen();

  /// File path: assets/brand_icon/jordan.svg
  String get jordan => 'assets/brand_icon/jordan.svg';

  /// File path: assets/brand_icon/nike.svg
  String get nike => 'assets/brand_icon/nike.svg';

  /// File path: assets/brand_icon/puma.svg
  String get puma => 'assets/brand_icon/puma.svg';

  /// File path: assets/brand_icon/rebook.svg
  String get rebook => 'assets/brand_icon/rebook.svg';

  /// File path: assets/brand_icon/vens.svg
  String get vens => 'assets/brand_icon/vens.svg';

  /// List of all assets
  List<String> get values => [jordan, nike, puma, rebook, vens];
}

class $AssetsShoesGen {
  const $AssetsShoesGen();

  /// File path: assets/shoes/jordan.png
  AssetGenImage get jordan => const AssetGenImage('assets/shoes/jordan.png');

  /// List of all assets
  List<AssetGenImage> get values => [jordan];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/add-circle.svg
  String get addCircle => 'assets/svg/add-circle.svg';

  /// File path: assets/svg/back_arrow.svg
  String get backArrow => 'assets/svg/back_arrow.svg';

  /// File path: assets/svg/bag.svg
  String get bag => 'assets/svg/bag.svg';

  /// File path: assets/svg/cart.svg
  String get cart => 'assets/svg/cart.svg';

  /// File path: assets/svg/close.svg
  String get close => 'assets/svg/close.svg';

  /// File path: assets/svg/empty_bag.svg
  String get emptyBag => 'assets/svg/empty_bag.svg';

  /// File path: assets/svg/minus-cirlce.svg
  String get minusCirlce => 'assets/svg/minus-cirlce.svg';

  /// File path: assets/svg/minus.svg
  String get minus => 'assets/svg/minus.svg';

  /// File path: assets/svg/setting.svg
  String get setting => 'assets/svg/setting.svg';

  /// File path: assets/svg/star.svg
  String get star => 'assets/svg/star.svg';

  /// File path: assets/svg/tick-circle.svg
  String get tickCircle => 'assets/svg/tick-circle.svg';

  /// File path: assets/svg/trash.svg
  String get trash => 'assets/svg/trash.svg';

  /// List of all assets
  List<String> get values => [
        addCircle,
        backArrow,
        bag,
        cart,
        close,
        emptyBag,
        minusCirlce,
        minus,
        setting,
        star,
        tickCircle,
        trash
      ];
}

class Assets {
  Assets._();

  static const $AssetsBrandIconGen brandIcon = $AssetsBrandIconGen();
  static const String logo = 'assets/logo.svg';
  static const AssetGenImage person = AssetGenImage('assets/person.png');
  static const $AssetsShoesGen shoes = $AssetsShoesGen();
  static const AssetGenImage splashLogo =
      AssetGenImage('assets/splash_logo.png');
  static const $AssetsSvgGen svg = $AssetsSvgGen();

  /// List of all assets
  static List<dynamic> get values => [logo, person, splashLogo];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
