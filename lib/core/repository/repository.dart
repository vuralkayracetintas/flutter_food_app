import 'package:food_app/core/models/response/categories.dart';
import 'package:food_app/core/services/api_service.dart';

class Repository {
  final ApiService _apiService;

  Repository(this._apiService);

  Future<Categories?> getCategories() async {
    return await _apiService.getCategories();
  }
}
