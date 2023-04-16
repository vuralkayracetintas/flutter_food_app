import 'package:food_app/core/models/response/area_list_response.dart';
import 'package:food_app/core/models/response/categories.dart';
import 'package:food_app/core/models/response/ingredient_list_response.dart';
import 'package:food_app/core/models/response/meal_detail_list_response.dart';
import 'package:food_app/core/models/response/meal_list_response.dart';
import 'package:food_app/core/services/api_service.dart';

import '../models/response/category_list_response.dart';

class Repository {
  final ApiService _apiService;

  Repository(this._apiService);

  Future<Categories> getCategories() async {
    return await _apiService.getCategories();
  }

  Future<CategoryListResponse> getCategoryList(String category) async {
    return await _apiService.getCategoryList(category);
  }

  Future<AreaListReponse> getAreaList(String area) async {
    return await _apiService.getAreaList(area);
  }

  Future<IngredientsListResponse> getIngredientsList(String ingredient) async {
    return await _apiService.getIngredientsList(ingredient);
  }

  Future<MealListResponse> getMealsByCategory(String category) async {
    return _apiService.filterByCategory(category);
  }

  Future<MealListResponse> getMealsByArea(String area) async {
    return await _apiService.filterByArea(area);
  }

  Future<MealListResponse> getMealsByIngredients(String ingredient) async {
    return await _apiService.filterByIngredients(ingredient);
  }

  Future<MealDetailListResponse> getMeal(String mealId) async {
    return await _apiService.getMealById(mealId);
  }

  Future<MealDetailListResponse> searchMealByName(String search) async {
    return await _apiService.searchMealByName(search);
  }
}
