import 'package:food_app/ui/detail/detail_view.dart';
import 'package:food_app/ui/home/home_view.dart';
import 'package:food_app/ui/main/main_view.dart';
import 'package:food_app/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: MainView),
    MaterialRoute(page: DetailView),
  ],
)
class App {}
