abstract class AppAssets {
  static const icons = _Icons();
  static const images = _Images();
}

class _Icons {
  const _Icons();

  static const _basePathIcons = 'assets/icons';
  final botNavBarScan = '$_basePathIcons/ic_bot_nav_bar_scan.svg';
  final botNavBarCollection = '$_basePathIcons/ic_bot_nav_bar_collection.svg';
  final botNavBarShop = '$_basePathIcons/ic_bot_nav_bar_shop.svg';
  final botNavBarSettings = '$_basePathIcons/ic_bot_nav_bar_settings.svg';
  final notifications = '$_basePathIcons/ic_notifications.svg';
  final cross = '$_basePathIcons/ic_cross.svg';
  final dropDown = '$_basePathIcons/ic_drop_down.svg';
  final plus = '$_basePathIcons/ic_plus.svg';
  final arrowBack = '$_basePathIcons/ic_arrow_back.svg';
  final obscure = '$_basePathIcons/ic_obscure.svg';
}

class _Images {
  const _Images();

  static const _basePathImage = 'assets/images';
  final whiskeyOneCask = '$_basePathImage/img_whiskey_one_cask.png';
  final imageBackground = '$_basePathImage/img_background.png';
  final genuine = '$_basePathImage/img_genuine.png';
  final appLogo = '$_basePathImage/img_app_logo.png';
}
