import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_app/app/core/common/services/connection/connection_checker_connection_service_impl.dart';
import 'package:geek_app/app/core/common/services/connection/connection_service.dart';
import 'package:geek_app/app/core/common/services/requests/dio_request_service.dart';
import 'package:geek_app/app/core/common/services/requests/request_service.dart';
import 'package:geek_app/app/modules/auth/auth_module.dart';
import 'package:geek_app/app/modules/splash/presentation/pages/splash_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<ConnectionService>(() => ConnectionCheckerPlusServiceImpl());
    i.addSingleton<RequestService>(() => DioRequestService());
  }

  @override
  void routes(RouteManager r) {
    //MODULES
    // r.module(
    //   '/home/',
    //   module: HomeModule(),
    //   transition: TransitionType.fadeIn,
    //   duration: 500.ms,
    // );
    r.module(
      '/auth/',
      module: AuthModule(),
      transition: TransitionType.fadeIn,
      duration: 2000.ms,
    );
    //CHILDS
    r.child(
      '/',
      child: (args) => const SplashPage(),
      transition: TransitionType.fadeIn,
      duration: 500.ms,
    );
    // r.child(
    //   '/not_connection/',
    //   child: (args) => const NotConnectionPage(),
    //   transition: TransitionType.fadeIn,
    //   duration: 800.ms,
    // );
    // r.wildcard(
    //   child: (args) => const NotFoundPage(),
    //   transition: TransitionType.fadeIn,
    //   duration: 800.ms,
    // );
  }
}
