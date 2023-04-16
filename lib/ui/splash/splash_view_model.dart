import 'package:food_app/app/app.router.dart';
import 'package:food_app/app/app_base_view_model.dart';

class SplashViewModel extends AppBaseViewModel {
  init() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      //navigationService.navigateTo(Routes.mainView);
      navigationService.replaceWithMainView();
      navigationService.replaceWith(Routes.mainView);
      //navigationService.navigateToMainView();
    });
  }
}
