import 'package:bishnu_s_application3/core/app_export.dart';
import 'package:bishnu_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: getHorizontalSize(272),
        controller: controller,
        hintText: "msg_search_in_action".tr,
        hintStyle: CustomTextStyles.bodySmall_1,
        suffix: Container(
          margin: getMargin(
            left: 30,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(18),
        ),
      ),
    );
  }
}
