import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:geek_app/app/core/common/constants/app_assets.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';

class DiscordButton extends StatelessWidget {
  const DiscordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: const Color(0xFF7289DA),
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
                AppAssets.svgs.discord,
                height: 30,
                width: 30,
              ),
              const Gap(10),
              const Text('Continue com o Discord', style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
