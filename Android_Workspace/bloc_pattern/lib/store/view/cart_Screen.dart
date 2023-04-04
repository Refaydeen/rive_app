import 'package:bloc_pattern/store/bloc/store_bloc.dart';
import 'package:bloc_pattern/store/bloc/store_event.dart';
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
    final hasEmptyCart=context.select<StoreBloc,bool>((b)=>b.state.cartIds.isEmpty);
    return Scaffold(
      appBar: AppBar(
        title: Text('My cart'),
      ),
      body: hasEmptyCart? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Cart is Empty'),
            SizedBox(height:10 ,),
            OutlinedButton(onPressed: (){

              Navigator.pop(context);
            }, child: Text('Add Product'))
          ],
        ),
      ):GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cartProducts.length,
        itemBuilder: (context, index) {
          print('context:$context');
          print('index:$index');
          final product = cartProducts[index];
          print('product:$product');
          return Card(
            key: ValueKey(product.id),
            child: Column(
              children: [
                Flexible(child: Image.network(product.image)),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Text(
                      product.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w300),
                    )),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                      backgroundColor:MaterialStatePropertyAll(Colors.black12)
                  ),


                  onPressed:()=>context.read<StoreBloc>().add(StoreProductsRemovedFromCart(product.id)),
                  child: Padding(

                    padding: const EdgeInsets.only(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const[
                        Icon(Icons.remove_shopping_cart,color: Colors.black45,),
                        SizedBox(width: 2,),
                        Text('Remove from Cart',style: TextStyle(color: Colors.black45),)
                      ]
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
