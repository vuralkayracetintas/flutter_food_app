import 'package:food_app/app/app_base_view_model.dart';

class MainViewModel extends AppBaseViewModel {
  int _currentTabIndex = 0;
  bool _reverse = false;
  int get currentTabIndex => _currentTabIndex;
  bool get reverse => _reverse;

  init() {}
  setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }
}
