import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../app/constants/app.colors.dart';
import '../../../app/constants/app.keys.dart';
import '../../../app/routes/app.routes.dart';
import '../../../core/notifiers/theme.notifier.dart';
import '../../../core/service/cache.service.dart';
import '../../widgets/custom.button.dart';
import '../../widgets/custom.styles.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future _initiateCache() async {
    return CacheService.conditionalCache(
      key: AppKeys.onBoardDone,
      actionIfNull: () {
        Navigator.of(context)
            .pushReplacementNamed(AppRouter.onboardingRoute)
            .whenComplete(
              () => {
                CacheService.setString(key: AppKeys.onBoardDone, value: 'done')
              },
            );
      },
      actionIfNotNull: () {
        CacheService.conditionalCache(
            key: AppKeys.userData,
            actionIfNull: () {
              Navigator.of(context)
                  .pushReplacementNamed(AppRouter.deciderRoute);
            },
            actionIfNotNull: () {
              Navigator.of(context).pushReplacementNamed(AppRouter.loginRoute);
            });
      },
    );
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 1), _initiateCache);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeNotifier _themeNotifier = Provider.of<ThemeNotifier>(context);
    var themeFlag = _themeNotifier.darkTheme;
    return Scaffold(
      backgroundColor: themeFlag ? AppColors.mirage : AppColors.creamColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'MetRoom',
              style: TextStyle(
                color: themeFlag ? AppColors.creamColor : AppColors.mirage,
                fontSize: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
