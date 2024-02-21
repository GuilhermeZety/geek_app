import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:geek_app/app/core/common/constants/app_assets.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';

class AppleButton extends StatelessWidget {
  const AppleButton({
    super.key,
    this.disabled = false,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: AppColors.black,
      child: InkWell(
        onTap: () async {
          //
        },
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.svgs.apple,
                height: 30,
                width: 30,
              ),
              const Gap(10),
              const Text('Continue com a Apple', style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
