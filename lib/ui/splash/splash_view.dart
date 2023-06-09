import 'package:flutter/material.dart';
import 'package:food_app/ui/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onViewModelReady: (model) => model.init(),
        builder: (context, model, widget) => Scaffold(
              body: Center(
                child: Text(
                  'splash view screen',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ));
  }
}
