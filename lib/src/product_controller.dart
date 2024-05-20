import 'package:decoupled_state/src/core/controller/controller_notifier.dart';
import 'package:decoupled_state/src/product_model.dart';
import 'package:flutter/material.dart';

// class ProductController extends ControllerStream<List<ProductModel>> {
class ProductController extends ControllerNotifier<List<ProductModel>> {
  ProductController() : super([]);

   ValueNotifier<List<ProductModel>> list =
      ValueNotifier<List<ProductModel>>([]);
  void fetch() {
   list.value = [
      ProductModel(
        name: "Product 1",
        description: "Description 1",
        price: 100.0,
        image: "https://via.placeholder.com/150",
      ),
      ProductModel(
        name: "Product 2",
        description: "Description 2",
        price: 200.0,
        image: "https://via.placeholder.com/150",
      ),
    ];
    dispatch(state);
  }
}
