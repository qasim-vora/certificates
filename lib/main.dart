import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/router/app_pages.dart';
import 'package:social_app/theme/app_theme.dart';

import 'constants/app_constants.dart';
import 'constants/storage_constants.dart';

Future<void> main()  async{
   //ProviderContainer().read(mainInitProvider);
   ProviderContainer().read(mainInitProvider);
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp( const ProviderScope ( child:  MyApp() ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

      ),
      child: MaterialApp(
        navigatorKey: AppConstants.globalKey,
        debugShowCheckedModeBanner: false,
        title: '',
        theme: AppTheme.lightTheme,
        initialRoute: Routes.splash,
        onGenerateRoute: AppRouter.onGenerateRoute,
        builder: (context, child) {
          return Overlay(
            initialEntries: [
              OverlayEntry(
                builder: (context) => child!,
              ),
            ],
          );
        },
      ),
    );
  }
}


