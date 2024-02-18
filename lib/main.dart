import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_app/app/app_module.dart';
import 'package:geek_app/app/app_widget.dart';
import 'package:geek_app/app/core/shared/current_session.dart';

CurrentSession session = CurrentSession();

//TODO: Rever logo em Linux/IOS/MAC

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await session.init();

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
