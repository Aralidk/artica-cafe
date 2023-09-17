import 'package:dental_dentist/firebase_options.dart';
import 'package:dental_dentist/providers/app_provider.dart';
import 'package:dental_dentist/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'util/const.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (BuildContext context, appProvider, Widget? child) {
        return MaterialApp(
          color: Colors.white,
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: Constants.AppTheme(LightColorSet()),
          darkTheme: Constants.AppTheme(DarkColorSet()),
          home: const Scaffold(
              body: SplashScreen()),
        );
      },
    );
  }
}
