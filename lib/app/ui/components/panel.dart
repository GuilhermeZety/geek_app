import 'package:flutter/material.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';
import 'package:geek_app/app/ui/components/shimed_box.dart';

class Panel extends StatelessWidget {
  final EdgeInsets padding;
  final Widget? child;
  final double? width;
  final double? height;
  final bool withShadow;
  final bool isLoading;
  final Border? border;
  final Color? color;
  final Color? splashColor;
  final Function()? onTap;
  final Function()? onLongPress;
  final bool? clickable;

  const Panel({
    super.key,
    this.padding = const EdgeInsets.all(20),
    this.child,
    this.withShadow = false,
    this.isLoading = false,
    this.width,
    this.height,
    this.border,
    this.onTap,
    this.onLongPress,
    this.clickable,
    this.color,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return ShimmedBox(
        width: width ?? double.infinity,
        height: height ?? double.infinity,
      );
    }

    return Container(
      width: width ?? double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(10),
        boxShadow: withShadow
            ? [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]
            : [],
      ),
      child: Material(
        color: color ?? AppColors.white,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: onTap,
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(10),
          splashColor: splashColor ?? AppColors.grey_100,
          overlayColor: MaterialStateProperty.all<Color>(
            splashColor?.withOpacity(0.5) ?? AppColors.grey_100.withOpacity(0.5),
          ),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
