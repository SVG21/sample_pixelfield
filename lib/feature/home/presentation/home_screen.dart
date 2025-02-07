import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/feature/collection/presentation/collection_screen.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';
import 'package:sample_pixelfield/utils/app_svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  final List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      backgroundColor: AppColors.backGroundColorDarkBlue,
      body: Center(
        child: Text('Scan Page', style: AppTypography.titleLarge),
      ),
    ),
    CollectionScreen(),
    Scaffold(
      backgroundColor: AppColors.backGroundColorDarkBlue,
      body: Center(
        child: Text('Shop Page', style: AppTypography.titleLarge),
      ),
    ),
    Scaffold(
      backgroundColor: AppColors.backGroundColorDarkBlue,
      body: Center(
        child: Text('Settings Page', style: AppTypography.titleLarge),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        color: AppColors.backGroundColorDark,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  backgroundColor: AppColors.backGroundColorDark,
                  elevation: 0,
                  selectedItemColor: AppColors.commonWhite,
                  unselectedItemColor: AppColors.commonGrey,
                  selectedLabelStyle: AppTypography.bodySmall,
                  unselectedLabelStyle: AppTypography.bodySmall,
                ),
              ),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: AppSvg(AppAssets.icons.botNavBarScan,
                          color: _selectedIndex == 0
                              ? AppColors.iconWhite
                              : AppColors.iconGrey),
                    ),
                    label: 'Scan',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: AppSvg(AppAssets.icons.botNavBarCollection,
                          color: _selectedIndex == 1
                              ? AppColors.iconWhite
                              : AppColors.iconGrey),
                    ),
                    label: 'Collection',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: AppSvg(AppAssets.icons.botNavBarShop,
                          color: _selectedIndex == 2
                              ? AppColors.iconWhite
                              : AppColors.iconGrey),
                    ),
                    label: 'Shop',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: AppSvg(AppAssets.icons.botNavBarSettings,
                          color: _selectedIndex == 3
                              ? AppColors.iconWhite
                              : AppColors.iconGrey),
                    ),
                    label: 'Settings',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                type: BottomNavigationBarType.fixed,
              ),
            )),
      ),
    );
  }
}
