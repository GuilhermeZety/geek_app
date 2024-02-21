import 'dart:ui';

import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:geek_app/app/core/common/constants/app_assets.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';
import 'package:geek_app/app/core/common/enums/layout_type.dart';
import 'package:geek_app/app/core/common/extensions/constraints_extension.dart';
import 'package:geek_app/app/core/common/extensions/context_extension.dart';
import 'package:geek_app/app/core/common/extensions/widget_extension.dart';
import 'package:geek_app/app/modules/auth/presentation/components/auth_buttons/apple_button.dart';
import 'package:geek_app/app/modules/auth/presentation/components/auth_buttons/discord_button.dart';
import 'package:geek_app/app/modules/auth/presentation/components/auth_buttons/google_button.dart';
import 'package:geek_app/app/ui/components/button.dart';

class AuthLoginPage extends StatefulWidget {
  const AuthLoginPage({super.key});

  @override
  State<AuthLoginPage> createState() => _AuthLoginPageState();
}

class _AuthLoginPageState extends State<AuthLoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (context.isLandscape || constraints.isDesktop) {
                return _desktop;
              } else if (constraints.isTablet) {
                return _tablet;
              } else {
                return _mobile;
              }
            },
          ),
        ),
      ),
    );
  }

  Widget get _desktop => Row(
        children: [
          _image(LayoutTypes.desktop),
          const Gap(24),
          _loginForm(LayoutTypes.desktop).expanded(),
        ],
      );
  //
  Widget get _mobile => Column(
        children: [
          _image(LayoutTypes.mobile),
          const Gap(24),
          _loginForm(LayoutTypes.mobile).expanded(),
        ],
      );
  //
  Widget get _tablet => Column(
        children: [
          _image(LayoutTypes.tablet),
          const Gap(24),
          _loginForm(LayoutTypes.tablet).expanded(),
        ],
      );

  Widget _loginForm(LayoutTypes type) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 330,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (type == LayoutTypes.desktop) ...[
                Image.asset(
                  AppAssets.images.logo,
                  width: 130,
                ).hero('logo').pBottom(74),
              ],
              const Text(
                'Acesse com alguma plataforma para uma experiência completa',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey_500,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(24),
              SeparatedColumn(
                separatorBuilder: () => const Gap(12),
                children: [
                  const GoogleButton().expandedH(),
                  const DiscordButton().expandedH(),
                  const AppleButton().expandedH(),
                ],
              ),
              const Gap(12),
              const Text('ou'),
              const Gap(12),
              Button(
                onPressed: () async {
                  //
                },
                color: AppColors.grey_800,
                child: const Text('Entrar como convidado'),
              ),
            ],
          ),
        ),
      ).pBottom(24),
    );
  }

  Widget _image(LayoutTypes type) => SizedBox(
        width: type == LayoutTypes.desktop ? context.width * 0.6 : context.width,
        height: type == LayoutTypes.desktop ? context.height : context.height * 0.4,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: type == LayoutTypes.desktop
                  ? const BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50))
                  : BorderRadius.only(
                      bottomLeft: Radius.circular(context.width * 0.05),
                      bottomRight: Radius.circular(context.width * 0.05),
                    ),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 0, sigmaX: 0),
                child: Image.asset(
                  AppAssets.images.background,
                  width: type == LayoutTypes.desktop ? context.width * 0.6 : context.width,
                  height: type == LayoutTypes.desktop ? context.height : context.height * 0.45,
                  fit: BoxFit.cover,
                ),
              ).hero('background'),
            ),
            Positioned(
              top: 24,
              left: 32,
              child: _sloganText(type),
            ),
            LayoutBuilder(
              builder: (context, ccc) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: type == LayoutTypes.desktop ? MainAxisAlignment.center : MainAxisAlignment.spaceEvenly,
                      children: [
                        if (type != LayoutTypes.desktop)
                          Image.asset(
                            AppAssets.images.logo,
                            width: 130,
                          ).hero('logo').pLeft(20),
                        Image.asset(
                          AppAssets.images.sung,
                          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                            if (frame == null) {
                              return const SizedBox();
                            }
                            return child;
                          },
                          height: switch (type) {
                            (LayoutTypes.desktop || LayoutTypes.largeDesktop) => context.height * 0.9 > ccc.maxHeight ? ccc.maxHeight : context.height * 0.9,
                            (LayoutTypes.tablet) => context.height * 0.4,
                            (LayoutTypes.mobile) => context.height * 0.32,
                          },
                        ).animate().fade(delay: 300.ms).scaleXY(begin: 0.9, end: 1, duration: 500.ms, alignment: Alignment.bottomCenter),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      );

  Widget _sloganText(LayoutTypes type) => SafeArea(
        child: Stack(
          children: [
            Text(
              'Desfrute do melhor conteúdo\nem qualquer lugar.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: type == LayoutTypes.desktop ? 14 : 9,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = AppColors.white,
              ),
            ),
            Text(
              'Desfrute do melhor conteúdo\nem qualquer lugar.',
              style: TextStyle(
                fontSize: type == LayoutTypes.desktop ? 14 : 9,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ).animate().fade(delay: 300.ms, duration: 500.ms).slideX(begin: -0.1, end: 0, duration: 500.ms, curve: Curves.fastOutSlowIn);
}
