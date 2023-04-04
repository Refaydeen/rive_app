import 'package:bloc_pattern/store/bloc/store_bloc.dart';
import 'package:bloc_pattern/store/bloc/store_event.dart';
import 'package:bloc_pattern/store/view/cart_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/store_state.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => StoreBloc(),
        child: _StoreAppView(title: 'Bloc'),
      ),
    );
  }
}

class _StoreAppView extends StatefulWidget {
  const _StoreAppView({required this.title});
  final String title;
  @override
  State<_StoreAppView> createState() => _StoreAppViewState();
}

class _StoreAppViewState extends State<_StoreAppView> {

  void _addToCart(int cartId){
      context.read<StoreBloc>().add(StoreProductAddedToCart(cartId));
  }
  void _removeFromCart(int cartId){
    context.read<StoreBloc>().add(StoreProductRemovedFromCart(cartId));

  }
  void _viewCart(){

    Navigator.push(context,
        PageRouteBuilder(
            transitionsBuilder: (_,animation,__,child){
              return SlideTransition(position: Tween(
                begin: Offset(0,1),
              end: Offset.zero
              ).animate(animation),
              child: BlocProvider.value(value: context.read<StoreBloc>(),child: child),
              );
            },
            pageBuilder: (_,__,___)=>CartScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<StoreBloc, StoreState>(
          builder: (context, state) {
            if (state.productsStatus == StoreRequest.requestInProgress) {
              return CircularProgressIndicator();
            }
            if (state.productsStatus == StoreRequest.requestFailure) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Problem Loading Products'),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        context.read<StoreBloc>().add(StoreProductRequested());
                      },
                      child: Text('Try Again'))
                ],
              );
            }
            if (state.productsStatus == StoreRequest.unknown) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shop_outlined, color: Colors.black26),
                  SizedBox(
                    height: 10,
                  ),
                  Text("No products to view"),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        context.read<StoreBloc>().add(StoreProductRequested());
                      },
                      child: Text('Load Products'))
                ],
              );
            }
            return GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                print('context:$context');
                print('index:$index');
                final product = state.products[index];
                final inCart=state.cartIds.contains(product.id);
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
                          backgroundColor: inCart?MaterialStatePropertyAll(Colors.black12):null
                        ),

                          onPressed:inCart?
                              ()=>_removeFromCart(product.id):
                              ()=>_addToCart(product.id),
                          child: Padding(

                            padding: const EdgeInsets.only(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:inCart ? const[
                                Icon(Icons.remove_shopping_cart,color: Colors.black45,),
                                SizedBox(width: 2,),
                                Text('Remove from Cart',style: TextStyle(color: Colors.black45),)
                              ]: [
                                Icon(Icons.add_shopping_cart),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Add to Cart')
                              ],
                            ),
                          ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:_viewCart,
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
