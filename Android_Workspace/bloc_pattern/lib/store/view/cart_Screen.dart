import 'package:bloc_pattern/store/bloc/store_bloc.dart';
import 'package:bloc_pattern/store/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProducts = context.select<StoreBloc, List<Product>>((b) => b
        .state.products
        .where((product) => b.state.cartIds.contains(product.id))
        .toList());
    return Scaffold(
      appBar: AppBar(
        title: Text('My cart'),
      ),
      body: Center(child: Text('${cartProducts.length}')),
    );
  }
}
