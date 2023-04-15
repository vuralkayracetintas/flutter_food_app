import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/app/app.router.dart';
import 'package:food_app/ui/main/main_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        <DeviceOrientation>[DeviceOrientation.portraitUp]);
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorObservers: [StackedService.routeObserver],
      title: 'Flutter Food App',
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
