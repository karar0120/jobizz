import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobizz/core/constance/Sizes.dart';
import 'package:jobizz/core/theming/color.dart';

class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? leadingWidth;
  final bool? centerTitle;
  final double? padding;
  final double? elevation;
  final double? appbarPreferredSize;

  const GeneralAppBar({
    Key? key,
    this.leadingWidth,
    this.centerTitle,
    this.appbarPreferredSize = 145,
    this.elevation = 0.0,
    this.padding = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: leadingWidth,
        centerTitle: centerTitle ?? false,
        elevation: elevation,
        backgroundColor: ColorsManager.lightGray,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(SizeConsts.s200.r),
                bottomRight: Radius.circular(SizeConsts.s200.r))),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(appbarPreferredSize ?? kToolbarHeight);
}
