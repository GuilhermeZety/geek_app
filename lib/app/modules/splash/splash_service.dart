import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_app/app/core/common/constants/app_routes.dart';
import 'package:geek_app/app/core/common/services/connection/connection_service.dart';

class SplashService {
  Timer? timer;
  Future<void> navigate() async {
    if (!await Modular.get<ConnectionService>().isConnected) {
      Modular.to.pushReplacementNamed(AppRoutes.notConnection);
      return;
    } else {
      await Modular.to.pushNamedAndRemoveUntil(AppRoutes.home.index(null), (_) => false);
    }
  }

  void dispose() {
    timer?.cancel();
  }
}
