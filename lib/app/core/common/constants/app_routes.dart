class AppRoutes {
  static const String splash = '/';
  static const String apresentation = '/apresentation/';
  static const String notConnection = '/not_connection/';

  static final RoutesAuth auth = RoutesAuth();
  static final HomeRoutes home = HomeRoutes();
}

class RoutesAuth {
  static const String _path = '/auth';

  final String login = '$_path/login/';
  final String createUser = '$_path/create_user/';
  final String createCompany = '$_path/create_company/';
  final String createCompanyFirst = '$_path/create_company/first/';
  final String createCompanySecond = '$_path/create_company/second/';
  String sendPhoneCode(String phone, bool sms) => '$_path/verify_phone/?phone=$phone&sms=$sms';
}

class HomeRoutes {
  static const String _path = '/home';

  String index(int? initialIndex) => '$_path/${initialIndex ?? 'null'}';
}
