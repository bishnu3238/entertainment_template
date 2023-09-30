import '../models/see_more_five_item_model.dart';
import 'package:bishnu_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeeMoreFiveItemWidget extends StatelessWidget {
  SeeMoreFiveItemWidget(
    this.seeMoreFiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeeMoreFiveItemModel seeMoreFiveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: getVerticalSize(175),
        width: getHorizontalSize(99),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailimage175x99,
              height: getVerticalSize(175),
              width: getHorizontalSize(99),
              radius: BorderRadius.circular(
                getHorizontalSize(2),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Opacity(
                opacity: 0.87,
                child: Padding(
                  padding: getPadding(
                    bottom: 16,
                  ),
                  child: Text(
                    seeMoreFiveItemModelObj.titleTxt,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
