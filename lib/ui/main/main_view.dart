import 'package:flutter/material.dart';
import 'package:food_app/common/helpers/create_bottom_nav_item.dart';
import 'package:food_app/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: () => MainViewModel(),
        disposeViewModel: false,
        builder: (context, model, child) => Scaffold(
              body: getViewForIndex(model.currentTabIndex),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.grey,
                currentIndex: model.currentTabIndex,
                unselectedFontSize: 13,
                selectedFontSize: 13,
                onTap: (value) {
                  model.setTabIndex(value);
                },
                items: [
                  CreateBottomNavItem().createNavItem(TabItem.Home),
                  CreateBottomNavItem().createNavItem(TabItem.Search),
                  CreateBottomNavItem().createNavItem(TabItem.Orders),
                  CreateBottomNavItem().createNavItem(TabItem.Profile)
                ],
              ),
            ));
  }
}
