/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/icons/avatar.png');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/icons/camera.svg');

  /// File path: assets/icons/camera_image.png
  AssetGenImage get cameraImage =>
      const AssetGenImage('assets/icons/camera_image.png');

  /// File path: assets/icons/down_left.svg
  SvgGenImage get downLeft => const SvgGenImage('assets/icons/down_left.svg');

  /// File path: assets/icons/home_active.svg
  SvgGenImage get homeActive =>
      const SvgGenImage('assets/icons/home_active.svg');

  /// File path: assets/icons/home_inacative.svg
  SvgGenImage get homeInacative =>
      const SvgGenImage('assets/icons/home_inacative.svg');

  /// File path: assets/icons/hrplus.png
  AssetGenImage get hrplus => const AssetGenImage('assets/icons/hrplus.png');

  /// File path: assets/icons/information.svg
  SvgGenImage get information =>
      const SvgGenImage('assets/icons/information.svg');

  /// File path: assets/icons/language.svg
  SvgGenImage get language => const SvgGenImage('assets/icons/language.svg');

  /// File path: assets/icons/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/location.svg');

  /// File path: assets/icons/logo.png
  AssetGenImage get logoPng => const AssetGenImage('assets/icons/logo.png');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logoSvg => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/logout.svg
  SvgGenImage get logout => const SvgGenImage('assets/icons/logout.svg');

  /// File path: assets/icons/moon.svg
  SvgGenImage get moon => const SvgGenImage('assets/icons/moon.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/obscureOff.svg
  SvgGenImage get obscureOff =>
      const SvgGenImage('assets/icons/obscureOff.svg');

  /// File path: assets/icons/obscureOn.svg
  SvgGenImage get obscureOn => const SvgGenImage('assets/icons/obscureOn.svg');

  /// File path: assets/icons/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/icons/phone.svg');

  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profile.svg');

  /// File path: assets/icons/profile_active.svg
  SvgGenImage get profileActive =>
      const SvgGenImage('assets/icons/profile_active.svg');

  /// File path: assets/icons/profile_inactive.svg
  SvgGenImage get profileInactive =>
      const SvgGenImage('assets/icons/profile_inactive.svg');

  /// File path: assets/icons/refresh.svg
  SvgGenImage get refresh => const SvgGenImage('assets/icons/refresh.svg');

  /// File path: assets/icons/ru.svg
  SvgGenImage get ru => const SvgGenImage('assets/icons/ru.svg');

  /// File path: assets/icons/sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/icons/sun.svg');

  /// File path: assets/icons/take_picture.svg
  SvgGenImage get takePicture =>
      const SvgGenImage('assets/icons/take_picture.svg');

  /// File path: assets/icons/theme.svg
  SvgGenImage get theme => const SvgGenImage('assets/icons/theme.svg');

  /// File path: assets/icons/top.svg
  SvgGenImage get top => const SvgGenImage('assets/icons/top.svg');

  /// File path: assets/icons/topRight.svg
  SvgGenImage get topRight => const SvgGenImage('assets/icons/topRight.svg');

  /// File path: assets/icons/uk.svg
  SvgGenImage get uk => const SvgGenImage('assets/icons/uk.svg');

  /// File path: assets/icons/uz.svg
  SvgGenImage get uz => const SvgGenImage('assets/icons/uz.svg');

  /// File path: assets/icons/verify.png
  AssetGenImage get verify => const AssetGenImage('assets/icons/verify.png');

  /// List of all assets
  List<dynamic> get values => [
        avatar,
        calendar,
        camera,
        cameraImage,
        downLeft,
        homeActive,
        homeInacative,
        hrplus,
        information,
        language,
        location,
        logoPng,
        logoSvg,
        logout,
        moon,
        notification,
        obscureOff,
        obscureOn,
        phone,
        profile,
        profileActive,
        profileInactive,
        refresh,
        ru,
        sun,
        takePicture,
        theme,
        top,
        topRight,
        uk,
        uz,
        verify
      ];
}

class $AssetsLocalizationGen {
  const $AssetsLocalizationGen();

  /// File path: assets/localization/translations.csv
  String get translations => 'assets/localization/translations.csv';

  /// List of all assets
  List<String> get values => [translations];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLocalizationGen localization = $AssetsLocalizationGen();
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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

  SvgPicture svg({
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
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
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
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
