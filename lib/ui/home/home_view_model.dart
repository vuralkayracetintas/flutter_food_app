import 'package:food_app/app/app_base_view_model.dart';
import 'package:food_app/core/models/response/categories.dart';

class HomeViewModel extends AppBaseViewModel {
  List<Categorie>? categories;
  init() {
    repository.getCategories().then((value) {
      categories = value!.categories;
      notifyListeners();
    });
  }
}
