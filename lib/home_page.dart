import 'package:decoupled_state/src/product_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productController = ProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Estado desacoplado")),
      body: ValueListenableBuilder(
        valueListenable: productController.list,
        builder: (context, value, _) => const Padding(
          padding: EdgeInsets.all(20),
          child: Text("teste"),
        ),
      ),
    );
  }
}
