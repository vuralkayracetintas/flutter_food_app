import 'package:flutter/material.dart';
import 'package:food_app/app/food_app.dart';
import 'package:food_app/core/di/get_it.dart';

void main() {
  setupDI();
  runApp(const FoodApp());
}
