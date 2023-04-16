import 'package:dio/dio.dart';
import 'package:food_app/core/models/response/categories.dart';

import 'package:retrofit/retrofit.dart';

import '../models/response/area_list_response.dart';
import '../models/response/category_list_response.dart';
import '../models/response/ingredient_list_response.dart';
import '../models/response/meal_detail_list_response.dart';
import '../models/response/meal_list_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("categories.php")
  Future<Categories> getCategories();

  @GET("lookup.php")
  Future<MealDetailListResponse> getMealById(@Query("i") String id);

  @GET("search.php")
  Future<MealDetailListResponse> searchMealByName(@Query("s") String search);

  @GET("list.php")
  Future<CategoryListResponse> getCategoryList(@Query("c") String category);

  @GET("list.php")
  Future<AreaListReponse> getAreaList(@Query("a") String area);

  @GET("list.php")
  Future<IngredientsListResponse> getIngredientsList(
      @Query("i") String ingredients);

  @GET("filter.php")
  Future<MealListResponse> filterByCategory(@Query("c") String category);

  @GET("filter.php")
  Future<MealListResponse> filterByArea(@Query("a") String area);

  @GET("filter.php")
  Future<MealListResponse> filterByIngredients(@Query("i") String ingredients);
}
