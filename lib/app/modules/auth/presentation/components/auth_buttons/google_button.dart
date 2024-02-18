import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:geek_app/app/core/common/constants/app_assets.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: Colors.white,
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
                AppAssets.svgs.google,
                height: 30,
                width: 30,
              ),
              const Gap(10),
              Text('Continue com o Google', style: TextStyle(color: AppColors.background, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
