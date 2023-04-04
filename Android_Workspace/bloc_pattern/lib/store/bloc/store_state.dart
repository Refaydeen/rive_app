import 'package:bloc_pattern/store/store.dart';

enum StoreRequest{
  unknown,
  requestInProgress,
  requestSuccess,
  requestFailure
}
class StoreState {
  const StoreState({
      this.productsStatus=StoreRequest.unknown,
    this.cartIds=const{},
    this.products=const [],


   });
  final List<Product> products;
  final StoreRequest productsStatus;
  final Set<int> cartIds;

  StoreState copyWith({
   List<Product>? products,
   StoreRequest? productsStatus,
   Set<int>? cartIds,
})=>StoreState(
    products: products ?? this.products,
    productsStatus: productsStatus ?? this.productsStatus,
    cartIds: cartIds?? this.cartIds
  );

}

