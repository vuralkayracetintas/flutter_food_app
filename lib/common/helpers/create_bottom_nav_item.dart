// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_app/ui/home/home_view.dart';

class CreateBottomNavItem {
  BottomNavigationBarItem createNavItem(TabItem tabItem) {
    final currentTab = TabItemData.tabs[tabItem];
    return BottomNavigationBarItem(
        icon: currentTab!.icon, label: currentTab.title);
  }
}

// ignore: constant_identifier_names
enum TabItem { Home, Search, Orders, Profile }

class TabItemData {
  String title;
  Widget icon;
  TabItemData({
    required this.title,
    required this.icon,
  });
  static Map<TabItem, TabItemData> tabs = {
    TabItem.Home: TabItemData(title: 'Home', icon: const Icon(Icons.home)),
    TabItem.Search:
        TabItemData(title: 'Search', icon: const Icon(Icons.search)),
    TabItem.Orders:
        TabItemData(title: 'Orders', icon: const Icon(Icons.phone_enabled)),
    TabItem.Profile:
        TabItemData(title: 'Profile', icon: const Icon(Icons.emoji_people))
  };
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const HomeView();
    case 2:
      return const HomeView();
    case 3:
      return const HomeView();
    default:
      return const HomeView();
  }
}
