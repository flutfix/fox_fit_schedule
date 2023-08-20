/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  $LibScheduleGen get schedule => const $LibScheduleGen();
}

class $LibScheduleGen {
  const $LibScheduleGen();

  $LibScheduleCommonGen get common => const $LibScheduleCommonGen();
  $LibScheduleConfigGen get config => const $LibScheduleConfigGen();
}

class $LibScheduleCommonGen {
  const $LibScheduleCommonGen();

  $LibScheduleCommonIconsGen get icons => const $LibScheduleCommonIconsGen();
}

class $LibScheduleConfigGen {
  const $LibScheduleConfigGen();

  /// File path: lib/schedule/config/.env.dev
  String get envDev => 'lib/schedule/config/.env.dev';

  /// File path: lib/schedule/config/.env.prod
  String get envProd => 'lib/schedule/config/.env.prod';

  /// File path: lib/schedule/config/config.dart
  String get config => 'lib/schedule/config/config.dart';

  /// List of all assets
  List<String> get values => [envDev, envProd, config];
}

class $LibScheduleCommonIconsGen {
  const $LibScheduleCommonIconsGen();

  /// File path: lib/schedule/common/icons/arrow_in_circle_left.svg
  String get arrowInCircleLeft =>
      'lib/schedule/common/icons/arrow_in_circle_left.svg';

  /// File path: lib/schedule/common/icons/arrow_in_circle_right.svg
  String get arrowInCircleRight =>
      'lib/schedule/common/icons/arrow_in_circle_right.svg';

  /// File path: lib/schedule/common/icons/plus.svg
  String get plus => 'lib/schedule/common/icons/plus.svg';

  /// List of all assets
  List<String> get values => [arrowInCircleLeft, arrowInCircleRight, plus];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
