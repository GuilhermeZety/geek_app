// ignore_for_file: library_private_types_in_public_api, unused_field

class AppAssets {
  static _AppImages images = _AppImages();
  static final AppSvgs svgs = AppSvgs();
}

class _AppImages {
  static const String _path = 'assets/images/';
  final String logo = '${_path}logo.png';
  final String background = '${_path}background.jpg';
  final String sung = '${_path}sung.png';
}

class AppSvgs {
  static const String _path = 'assets/svgs/';
  final String logo = '${_path}logo.svg';
  final String google = '${_path}google.svg';
  final String discord = '${_path}discord.svg';
  final String apple = '${_path}apple.svg';
}
