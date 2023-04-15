import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/app/app.router.dart';
import 'package:food_app/app/app_base_view_model.dart';
import 'package:food_app/core/di/get_it.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        <DeviceOrientation>[DeviceOrientation.portraitUp]);

    return ViewModelBuilder<AppBaseViewModel>.reactive(
        viewModelBuilder: () => getIt<AppBaseViewModel>(),
        onViewModelReady: (viewModel) => viewModel.initialise(),
        builder: (context, viewModel, child) => MaterialApp(
              navigatorKey: StackedService.navigatorKey,
              onGenerateRoute: StackedRouter().onGenerateRoute,
              navigatorObservers: [StackedService.routeObserver],
              title: 'Flutter Food App',
              debugShowCheckedModeBanner: false,
            ));
  }
}
