import 'package:ecom_firebase/constant/assets.dart';
import 'package:ecom_firebase/constant/dimens.dart';
import 'package:flutter/material.dart';

class FxAssetImage extends StatelessWidget {
  const FxAssetImage(
      {super.key,
      this.height,
      this.width,
      this.boxFit,
      this.scale,
      required this.assetImage});
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final double? scale;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? double.infinity,
      child: Image.asset(
        assetImage,
        height: height,
        width: width,
        fit: boxFit,
        scale: scale,
      ),
    );
  }
}
