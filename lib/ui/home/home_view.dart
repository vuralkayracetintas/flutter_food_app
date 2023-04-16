import 'package:flutter/material.dart';
import 'package:food_app/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (model) => model.init(),
        builder: (context, model, widget) => Scaffold(
              appBar: AppBar(
                  title: const Text(
                'sdad',
              )),
              body: Center(
                child: Column(children: [
                  Text(model.categories != null
                      ? model.categories![1].strCategory
                      : 'Loading'),
                ]),
              ),
            ));
  }
}
