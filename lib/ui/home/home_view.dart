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
            body: model.categories == null
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: model.categories!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(model.categories![index].strCategory),
                        onTap: () {
                          model.getCategoryByName(
                              model.categories![index].strCategory);
                        },
                      );
                    },
                  )));
  }
}
