import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_app/app/modules/auth/presentation/pages/auth_page.dart';

class AuthModule extends Module {
  @override
  void binds(Injector i) {
    // AuthLogic.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/login/',
      child: (args) => const AuthLoginPage(),
      transition: TransitionType.fadeIn,
      duration: 500.ms,
    );
  }
}
