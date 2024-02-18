import 'package:flutter/material.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';

class EditLayer extends StatelessWidget {
  const EditLayer({
    super.key,
    required this.onTap,
    required this.width,
    required this.height,
    required this.child,
    this.inverted = false,
  });

  final void Function() onTap;
  final Widget child;
  final double width;
  final double height;
  final bool inverted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 130,
      child: Stack(
        children: [
          child,
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: inverted ? AppColors.white : AppColors.primary,
                  borderRadius: BorderRadius.circular(1000),
                ),
                width: 40,
                height: 40,
                child: Icon(
                  Icons.edit_rounded,
                  color: inverted ? AppColors.primary : AppColors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
