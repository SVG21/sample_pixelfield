import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  const AppSvg(
    this.asset, {
    super.key,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
    this.blendMode = BlendMode.srcIn,
  });

  final String asset;
  final BlendMode blendMode;
  final BoxFit fit;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      height: height,
      width: width,
      fit: fit,
      colorFilter: color != null ? ColorFilter.mode(color!, blendMode) : null,
    );
  }
}
